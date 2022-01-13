
import UIKit
import AVFoundation

protocol GardenCreateCoverDelegate: AnyObject {
    func didCreateGarden(model: GardenModel)
}

class GardenCreateCover: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var borderView: UIView!
    
    @IBOutlet weak var capturedImageView: UIImageView!
    
    @IBOutlet weak var flashButton: UIButton!
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var captureLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private var captureSession : AVCaptureSession!
    private var previewLayer : AVCaptureVideoPreviewLayer?
    private var backCamera : AVCaptureDevice!
    private var backInput : AVCaptureInput!
    private var videoOutput : AVCaptureVideoDataOutput!
    private var takePicture = false
    private var capturedImage: UIImage?
    private var gardenName: String
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    private weak var delegate: GardenCreateCoverDelegate?
    lazy var presenter = GardenCreateCoverPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenName: String, delegate: GardenCreateCoverDelegate) {
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
        navigationItem.title = "Add Place"
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        
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

extension GardenCreateCover {
    
    func setupAndStartCaptureSession() {
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

extension GardenCreateCover: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
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
            
            self.presenter.createGarden(image: image, name: self.gardenName)
        }
    }
}

//----------------------------------------------
// MARK: - AVCaptureVideoDataOutputSampleBufferDelegate
//----------------------------------------------

extension GardenCreateCover: AVCaptureVideoDataOutputSampleBufferDelegate {
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
            
            self.presenter.createGarden(image: image, name: self.gardenName)
        }
    }
}

//----------------------------------------------
// MARK: - GardenEditChangeCoverOutputProtocol
//----------------------------------------------

extension GardenCreateCover: GardenCreateCoverOutputProtocol {
    func successCreateGarden(model: GardenModel) {
        dismiss(animated: true) {
            self.delegate?.didCreateGarden(model: model)
        }
    }
    
    func failure(error: String) {
        
    }
}
