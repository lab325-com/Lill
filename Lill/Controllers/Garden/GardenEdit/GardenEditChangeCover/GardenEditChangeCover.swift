
import UIKit
import AVFoundation

protocol GardenEditChangeCoverDelegate: AnyObject {
    func didChangeGardenCover(img: UIImage)
}

class GardenEditChangeCover: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var borderView: UIView!
    
    @IBOutlet weak var capturedImageView: UIImageView!
    
    @IBOutlet weak var flashButton: UIButton!
    
    @IBOutlet weak var gardenNameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var captureLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let gardenName: String
    private let gardenId: String
    private var captureSession : AVCaptureSession!
    private var previewLayer : AVCaptureVideoPreviewLayer?
    private var backCamera : AVCaptureDevice!
    private var backInput : AVCaptureInput!
    private var videoOutput : AVCaptureVideoDataOutput!
    private var takePicture = false
    private var capturedImage: UIImage?
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    weak var delegate: GardenEditChangeCoverDelegate?
    lazy var presenter = GardenEditChangeCoverPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenId: String, gardenName: String, delegate: GardenEditChangeCoverDelegate) {
        self.gardenId = gardenId
        self.gardenName = gardenName
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        previewLayer?.frame = self.cameraView.layer.bounds
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        navigationItem.title = gardenName
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        let rightBarButtonItem = UIBarButtonItem(title: RLocalization.garden_edit_change_cover_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .done, target: self, action: #selector(done))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        topView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 24.0)
        bottomView.roundCorners(corners: [.topRight, .topLeft], radius: 24.0)
        
        borderView.layer.cornerRadius = 24
        borderView.layer.borderWidth = 1
        borderView.layer.borderColor = UIColor.white.cgColor
        
        setupAndStartCaptureSession()
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @objc func done() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func galleryAction(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.sourceType = .savedPhotosAlbum
        vc.mediaTypes = ["public.image"]
        
        present(vc, animated: true)
    }
    
    @IBAction func actionCapture(_ sender: UIButton) {
        takePicture = true
    }
    
    @IBAction func flashAction(_ sender: Any) {
        if let device = AVCaptureDevice.default(for: AVMediaType.video) {
            if (device.hasTorch) {
                do {
                    try device.lockForConfiguration()
                    let torchOn = !device.isTorchActive
                    try device.setTorchModeOn(level: 1.0)
                    device.torchMode = torchOn ? AVCaptureDevice.TorchMode.on : AVCaptureDevice.TorchMode.off
                    device.unlockForConfiguration()
                    flashButton.setImage(UIImage(named: torchOn ? "ic_identify_flash_on" : "ic_identify_flash_off"), for: .normal)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

//----------------------------------------------
// MARK: - Camera Setup
//----------------------------------------------

extension GardenEditChangeCover {
    
    func setupAndStartCaptureSession() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized, .notDetermined:
            DispatchQueue.global(qos: .userInitiated).async {
                self.captureSession = AVCaptureSession()
                self.captureSession.beginConfiguration()
                if self.captureSession.canSetSessionPreset(.photo) {
                    self.captureSession.sessionPreset = .photo
                }
                self.captureSession.automaticallyConfiguresCaptureDeviceForWideColor = true
                
                self.setupInputs()
                
                DispatchQueue.main.async {
                    self.setupPreviewLayer()
                }
                
                self.setupOutput()
                
                self.captureSession.commitConfiguration()
                self.captureSession.startRunning()
            }
        default:
            let alert = UIAlertController(title: RLocalization.allert_camer_permission_title.localized(PreferencesManager.sharedManager.languageCode.rawValue), message: RLocalization.allert_camer_permission_subtittle.localized(PreferencesManager.sharedManager.languageCode.rawValue), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: RLocalization.allert_camer_permission_settings.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .default, handler: { action in
                guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
                    self.dismiss(animated: true)
                    self.navigationController?.popViewController(animated: true)
                    return
                }
                
                if UIApplication.shared.canOpenURL(settingsUrl) {
                    UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                        self.dismiss(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    })
                } else {
                    self.dismiss(animated: true)
                    self.navigationController?.popViewController(animated: true)
                }
            }))
            alert.addAction(UIAlertAction(title: RLocalization.allert_camer_permission_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .default, handler: { action in
                self.dismiss(animated: true)
                self.navigationController?.popViewController(animated: true)
            }))
            self.present(alert, animated: true, completion: nil)
            break
        }
    }
    
    func setupPreviewLayer() {
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        previewLayer?.frame = self.cameraView.layer.bounds
        cameraView.layer.addSublayer(previewLayer!)
    }
    
    func setupInputs() {
        if let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) {
            backCamera = device
        } else {
            fatalError("no back camera")
        }
        
        guard let bInput = try? AVCaptureDeviceInput(device: backCamera) else {
            fatalError("could not create input device from back camera")
        }
        backInput = bInput
        if !captureSession.canAddInput(backInput) {
            fatalError("could not add back camera input to capture session")
        }
        
        captureSession.addInput(backInput)
    }
    
    func setupOutput() {
        videoOutput = AVCaptureVideoDataOutput()
        let videoQueue = DispatchQueue(label: "videoQueue", qos: .userInteractive)
        videoOutput.setSampleBufferDelegate(self, queue: videoQueue)
        
        if captureSession.canAddOutput(videoOutput) {
            captureSession.addOutput(videoOutput)
        } else {
            fatalError("could not add video output")
        }
        
        videoOutput.connections.first?.videoOrientation = .portrait
    }
}

//----------------------------------------------
// MARK: - UIImagePickerControllerDelegate
//----------------------------------------------

extension GardenEditChangeCover: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        guard let image = info[.originalImage] as? UIImage else {
            print("No image found")
            return
        }
        
        self.capturedImage = image
        
        DispatchQueue.main.async {
            self.captureSession.stopRunning()
            self.previewLayer?.removeFromSuperlayer()
            
            self.flashButton.isHidden = true
            self.capturedImageView.image = image
            self.capturedImage = image
            self.takePicture = false
            
            self.presenter.uploadMedia(id: self.gardenId, img: image)
        }
    }
}

//----------------------------------------------
// MARK: - AVCaptureVideoDataOutputSampleBufferDelegate
//----------------------------------------------

extension GardenEditChangeCover: AVCaptureVideoDataOutputSampleBufferDelegate {
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        if !takePicture { return }
        
        guard let cvBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        let ciImage = CIImage(cvImageBuffer: cvBuffer)
        let image = UIImage(ciImage: ciImage)
        
        DispatchQueue.main.async {
            self.captureSession.stopRunning()
            self.previewLayer?.removeFromSuperlayer()
            
            self.flashButton.isHidden = true
            self.capturedImageView.image = image
            self.capturedImage = image
            self.takePicture = false
            
            self.presenter.uploadMedia(id: self.gardenId, img: image)
        }
    }
}

//----------------------------------------------
// MARK: - GardenEditChangeCoverOutputProtocol
//----------------------------------------------

extension GardenEditChangeCover: GardenEditChangeCoverOutputProtocol {
    func successUploadMedia(img: UIImage) {
        navigationController?.popViewController(animated: true)
        delegate?.didChangeGardenCover(img: img)
    }
    
    func failure(error: String) {
        
    }
}
