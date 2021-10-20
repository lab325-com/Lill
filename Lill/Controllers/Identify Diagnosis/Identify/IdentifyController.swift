
import UIKit
import AVFoundation

class IdentifyController: BaseController {
    
    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var topView: ShadowView!
    @IBOutlet weak var bottomView: ShadowView!
    @IBOutlet weak var captureView: ShadowView!
    
    @IBOutlet weak var identifyOnboardingView: UIView!
    @IBOutlet weak var identifyView: UIView!
    @IBOutlet weak var identifyRsultView: UIView!
    @IBOutlet weak var identifyAnalyzingView: UIView!
    @IBOutlet weak var identifyPremiumView: UIView!
    @IBOutlet weak var identifyRsultPremiumView: UIView!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var capturedView: UIView!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var makePhotoTitleLabel: UILabel!
    @IBOutlet weak var makePhotoInfoLabel: UILabel!
    @IBOutlet weak var photoQualityTitleLabel: UILabel!
    @IBOutlet weak var photoQualityInfoLabel: UILabel!
    @IBOutlet weak var overviewTitleLabel: UILabel!
    @IBOutlet weak var overviewInfoLabel: UILabel!
    @IBOutlet weak var identifyTitleLabel: UILabel!
    @IBOutlet weak var identifyInfoLabel: UILabel!
    @IBOutlet weak var identifyCountLabel: UILabel!
    @IBOutlet weak var identifyFreeSnapsLabel: UILabel!
    @IBOutlet weak var identifyPremiumLabel: UILabel!
    @IBOutlet weak var identifyCaptureLabel: UILabel!
    @IBOutlet weak var identifyResultTitleLabel: UILabel!
    @IBOutlet weak var identifyResultCountLabel: UILabel!
    @IBOutlet weak var identifyResultSnapsLeftLabel: UILabel!
    @IBOutlet weak var identifyResultInfoLabel: UILabel!
    @IBOutlet weak var identifyAnalyzeImageLabel: UILabel!
    @IBOutlet weak var identifyAnalyzeIdentifyPlantLabel: UILabel!
    @IBOutlet weak var identifyResultsLabel: UILabel!
    @IBOutlet weak var noDataLabel: UILabel!
    
    @IBOutlet weak var startIdentifyButton: UIButton!
    @IBOutlet weak var identifyPhotoButton: UIButton!
    @IBOutlet weak var retakePhotoButton: UIButton!
    @IBOutlet weak var flashButton: UIButton!
    
    @IBOutlet weak var analizeActivity: UIActivityIndicatorView!
    @IBOutlet weak var identifyActivity: UIActivityIndicatorView!
    
    @IBOutlet weak var analizeImageView: UIImageView!
    @IBOutlet weak var identifyImageView: UIImageView!
    @IBOutlet weak var noDataImage: UIImageView!
    @IBOutlet weak var capturedImageView: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = IdentifyPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Public property
    //----------------------------------------------
    
    let cellIdentifier = String(describing: PlantCollectionCell.self)
    var identifyResults = [PlantsModel]()
    var meModel: MeDataModel?
    
    var captureSession : AVCaptureSession!
    var backCamera : AVCaptureDevice!
    var backInput : AVCaptureInput!
    var previewLayer : AVCaptureVideoPreviewLayer?
    var videoOutput : AVCaptureVideoDataOutput!
    var takePicture = false
    var capturedImage: UIImage?
    
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
    
    func setup() {
        collectionView.register(UINib.init(nibName: cellIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellIdentifier)
        
        captureView.layer.borderColor = UIColor.white.cgColor
        capturedView.layer.borderColor = UIColor.white.cgColor
        
//        identifyOnboardingView.roundCorners(corners: [.topLeft, .topRight], radius: 24.0)
//        identifyView.roundCorners(corners: [.topLeft, .topRight], radius: 24.0)
//        identifyRsultView.roundCorners(corners: [.topLeft, .topRight], radius: 24.0)
//        identifyAnalyzingView.roundCorners(corners: [.topLeft, .topRight], radius: 24.0)
                
        titleLabel.text = RLocalization.identify_title()
        
        makePhotoTitleLabel.text = RLocalization.identify_make_photo_title()
        makePhotoInfoLabel.text = RLocalization.identify_make_photo_info()
        photoQualityTitleLabel.text = RLocalization.identify_photo_quality_title()
        photoQualityInfoLabel.text = RLocalization.identify_photo_quality_info()
        overviewTitleLabel.text = RLocalization.identify_overview_title()
        overviewInfoLabel.text = RLocalization.identify_overview_info()
        
        identifyTitleLabel.text = RLocalization.identify_title()
        identifyInfoLabel.text = RLocalization.identify_info()
        identifyFreeSnapsLabel.text = RLocalization.identify_free_snaps()
        identifyPremiumLabel.text = RLocalization.identify_premium()
        identifyCaptureLabel.text = RLocalization.identify_capture()
        
        identifyResultTitleLabel.text = RLocalization.identify_result_title()
        identifyResultSnapsLeftLabel.text = RLocalization.identify_result_snaps_left()
        identifyResultInfoLabel.text = RLocalization.identify_result_info()
        
        identifyAnalyzeImageLabel.text = RLocalization.identify_analize_image()
        identifyAnalyzeIdentifyPlantLabel.text = RLocalization.identify_analize_identify_plant()
        
        noDataLabel.text = RLocalization.identify_no_data()
        
        startIdentifyButton.setTitle(RLocalization.identify_start_identify(), for: .normal)
        identifyPhotoButton.setTitle(RLocalization.identify_result_identify_photo(), for: .normal)
        retakePhotoButton.setTitle(RLocalization.identify_result_retake_photo(), for: .normal)
        
        guard let model = meModel else { return }
        identifyCountLabel.text = "\(model.me.access.identifyUsed)" + "/" + "\(model.me.access.identifyTotal)"
        identifyResultCountLabel.text = "\(model.me.access.identifyUsed)" + "/" + "\(model.me.access.identifyTotal)"
        identifyPremiumView.isHidden = model.me.access.isPremium
        identifyRsultPremiumView.isHidden = model.me.access.isPremium
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
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
    
    @IBAction func startIdentifyAction(_ sender: Any) {
        identifyOnboardingView.isHidden = true
        stackView.isHidden = true
        identifyView.isHidden = false
        setupAndStartCaptureSession()
        flashButton.isHidden = false
        capturedView.isHidden = false
    }
    
    @IBAction func galleryAction(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.sourceType = .savedPhotosAlbum
        vc.mediaTypes = ["public.image"]
        
        present(vc, animated: true)
    }
    
    @IBAction func captureAction(_ sender: Any) {
        takePicture = true
        
        self.identifyView.isHidden = true
        self.identifyRsultView.isHidden = false
        self.flashButton.isHidden = true
    }
    
    @IBAction func subscribeAction(_ sender: Any) {
        dismiss(animated: false) {
            let currentNavigationController = RootRouter.sharedInstance.topViewController?.navigationController
            PlantsRouter(presenter: currentNavigationController).presentSubscribe()
        }
    }
    
    @IBAction func identifyAction(_ sender: Any) {
        guard let image = capturedImage else { return }
        
        presenter.uploadPhoto(img: image.description)
        
        identifyRsultView.isHidden = true
        identifyAnalyzingView.isHidden = false
    }
    
    @IBAction func retakePhotoAction(_ sender: Any) {
        capturedImage = nil
        self.capturedImageView.image = nil
        
        identifyRsultView.isHidden = true
        identifyView.isHidden = false
        flashButton.isHidden = false
        
        setupAndStartCaptureSession()
    }
}

//----------------------------------------------
// MARK: - UIImagePickerControllerDelegate
//----------------------------------------------

extension IdentifyController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        guard let image = info[.originalImage] as? UIImage else {
            print("No image found")
            return
        }
        
        DispatchQueue.main.async {
            self.captureSession.stopRunning()
            self.previewLayer?.removeFromSuperlayer()
            
            self.flashButton.isHidden = true
            self.identifyAnalyzingView.isHidden = false
            self.capturedView.isHidden = false
            self.capturedImageView.image = image
            
            self.presenter.uploadPhoto(img: image.description)
        }
    }
}

//----------------------------------------------
// MARK: - PlantsOutputProtocol
//----------------------------------------------

extension IdentifyController: IdentifyOutputProtocol {
    func successUpload(model: MediaDataModel) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.analizeActivity.stopAnimating()
            self.analizeImageView.isHidden = false
            self.identifyActivity.startAnimating()
            self.identifyAnalyzeIdentifyPlantLabel.isHidden = false
            
            self.presenter.recognizePhoto(img: model.uploadMediaRecognition.urlIosFull)
        }
    }
    
    func successRecognize(model: RecognitionDataModel) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.identifyActivity.stopAnimating()
            self.identifyImageView.isHidden = false
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.bottomView.isHidden = true
                self.capturedView.isHidden = true
                self.identifyResultsLabel.isHidden = false
                self.identifyResultsLabel.text = RLocalization.identify_results() + " " + String(model.startRecognition.plants.count)
                
                self.identifyResults = model.startRecognition.plants
                self.noDataImage.isHidden = self.identifyResults.count > 0
                self.noDataImage.isHidden = self.identifyResults.count > 0
                
                self.collectionView.isHidden = false
                self.collectionView.reloadData()
            }
        }
    }
    
    func failure(error: String) {
        
    }
}

//----------------------------------------------
// MARK: - Camera Setup
//----------------------------------------------

extension IdentifyController {
    
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
        
        //now we need to create an input objects from our devices
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

extension IdentifyController: AVCaptureVideoDataOutputSampleBufferDelegate {
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        if !takePicture { return }
        
        guard let cvBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        let ciImage = CIImage(cvImageBuffer: cvBuffer)
        let uiImage = UIImage(ciImage: ciImage)
        
        DispatchQueue.main.async {
            self.captureSession.stopRunning()
            self.previewLayer?.removeFromSuperlayer()
            
            self.capturedImageView.image = uiImage
            self.capturedImage = uiImage
            self.takePicture = false
        }
    }
}
