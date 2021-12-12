
import UIKit
import AVFoundation

class DiagnosisController: BaseController {
    
    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var topView: ShadowView!
    @IBOutlet weak var bottomView: ShadowView!
    @IBOutlet weak var captureView: ShadowView!
    
    @IBOutlet weak var diagnosingView: UIView!
    @IBOutlet weak var diagnosingCaptureView: UIView!
    @IBOutlet weak var diagnosingPreviewView: UIView!
    @IBOutlet weak var diagnosingAnalyzeView: UIView!
    @IBOutlet weak var diagnosingNoResultView: UIView!
    @IBOutlet weak var diagnosingResultView: UIView!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var capturedView: UIView!
    @IBOutlet weak var noDiagnoseView: UIView!
    
    @IBOutlet weak var bottomViewHeighConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var capturedImageView: UIImageView!
    @IBOutlet weak var noDiagnoseImageView: UIImageView!
    @IBOutlet weak var diagnoseLargePlantImageView: UIImageView!
    @IBOutlet weak var diagnoseSmallPlantImageView: UIImageView!
    
    @IBOutlet weak var startDiagnosingButton: UIButton!
    @IBOutlet weak var flashButton: UIButton!
    @IBOutlet weak var diagnoseButton: UIButton!
    @IBOutlet weak var retakeButton: UIButton!
    @IBOutlet weak var restartDiagnosingButton: UIButton!
        
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var onboardingInfoLabel: UILabel!
    @IBOutlet weak var captureInfoLabel: UILabel!
    @IBOutlet weak var captureLabel: UILabel!
    @IBOutlet weak var previewInfoLabel: UILabel!
    @IBOutlet weak var analyzeInfoLabel: UILabel!
    @IBOutlet weak var noDiagnoseLabel: UILabel!
    @IBOutlet weak var diagnoseFirstPlantNameLabel: UILabel!
    @IBOutlet weak var diagnoseSecondPlantNameLabel: UILabel!
    @IBOutlet weak var diagnoseTimeLabel: UILabel!
    @IBOutlet weak var diagnoseTitleLabel: UILabel!
    @IBOutlet weak var diagnoseInfoLabel: UILabel!
    
    @IBOutlet weak var analizeActivity: UIActivityIndicatorView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = DiagnosisPresenter(view: self)
    private lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "dd MMM hh:ss"
        return dateFormatter
    }()
    
    var captureSession : AVCaptureSession!
    var backCamera : AVCaptureDevice!
    var backInput : AVCaptureInput!
    var previewLayer : AVCaptureVideoPreviewLayer?
    var videoOutput : AVCaptureVideoDataOutput!
    var takePicture = false
    var capturedImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    func setup() {
        captureView.layer.borderColor = UIColor.white.cgColor
        capturedView.layer.borderColor = UIColor.white.cgColor
        
        bottomView.layer.cornerRadius = 24.0
        bottomView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        topView.layer.cornerRadius = 24.0
        topView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        titleLabel.text = RLocalization.diagnosis_title()
        onboardingInfoLabel.text = RLocalization.diagnosis_onboarding_info()
        captureInfoLabel.text = RLocalization.diagnosis_capture_info()
        captureLabel.text = RLocalization.diagnosis_capture()
        previewInfoLabel.text = RLocalization.diagnosis_preview_info()
        analyzeInfoLabel.text = RLocalization.diagnosis_analyze_info()
        noDiagnoseLabel.text = RLocalization.diagnosis_no_data()
        
        startDiagnosingButton.setTitle(RLocalization.diagnosis_start_diagnose(), for: .normal)
        retakeButton.setTitle(RLocalization.diagnosis_preview_retake(), for: .normal)
        restartDiagnosingButton.setTitle(RLocalization.diagnosis_restart_diagnosing(), for: .normal)
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
    
    @IBAction func startDiagnosisAction(_ sender: Any) {
        stackView.isHidden = true
        onboardingInfoLabel.isHidden = true
        diagnosingView.isHidden = true
        diagnosingCaptureView.isHidden = false
        setupAndStartCaptureSession()
        flashButton.isHidden = false
        capturedView.isHidden = false
        
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .diagnosing_step_2)
    }
    
    @IBAction func galleryAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .identify_upload)
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.sourceType = .savedPhotosAlbum
        vc.mediaTypes = ["public.image"]
        
        present(vc, animated: true)
    }
    
    @IBAction func captureAction(_ sender: Any) {
        takePicture = true
        AnalyticsHelper.sendFirebaseEvents(events: .identify_capture)
        diagnosingCaptureView.isHidden = true
        diagnosingPreviewView.isHidden = false
        flashButton.isHidden = true
    }
    
    @IBAction func retakeAction(_ sender: Any) {
        
        AnalyticsHelper.sendFirebaseEvents(events: .retake_photo)
        capturedImage = nil
        capturedImageView.image = nil
        
        diagnosingPreviewView.isHidden = true
        diagnosingCaptureView.isHidden = false
        flashButton.isHidden = false
        
        setupAndStartCaptureSession()
    }

    @IBAction func diagnoseAction(_ sender: Any) {
        guard let image = capturedImage else { return }
        
        presenter.uploadPhoto(img: image)
        
        analizeActivity.startAnimating()
        
        diagnosingPreviewView.isHidden = true
        diagnosingAnalyzeView.isHidden = false
    }

    @IBAction func restartAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .re_diagnose)
        
        DispatchQueue.main.async {
            AnalyticsHelper.sendFirebaseScreenEvent(screen: .diagnosing_step_2)
        }
        
        diagnosingResultView.isHidden = true
        diagnosingNoResultView.isHidden = true
        diagnoseLargePlantImageView.isHidden = true
        noDiagnoseView.isHidden = true
        
        capturedImage = nil
        capturedImageView.image = nil
        noDiagnoseImageView.image = nil
        
        flashButton.isHidden = false
        capturedView.isHidden = false
        diagnosingCaptureView.isHidden = false
        bottomViewHeighConstraint.constant = 272.0
        
        setupAndStartCaptureSession()
    }
}

//----------------------------------------------
// MARK: - UIImagePickerControllerDelegate
//----------------------------------------------

extension DiagnosisController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
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
            self.diagnosingCaptureView.isHidden = true
            self.diagnosingPreviewView.isHidden = false
            self.capturedImageView.image = image
            self.capturedImage = image
            
        }
    }
}

//----------------------------------------------
// MARK: - DiagnosisOutputProtocol
//----------------------------------------------

extension DiagnosisController: DiagnosisOutputProtocol {
    func successUpload(model: MediaDataModel) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.analizeActivity.stopAnimating()
            self.diagnosingAnalyzeView.isHidden = true

            guard let id = model.uploadMedia.id else { return }
            self.presenter.diagnosePhoto(id: id)
        }
    }
    
    func successDiagnose(model: DiagnoseDataModel) {
        
        capturedView.isHidden = true
        
        if let result = model.startDiagnose {
            diagnosingResultView.isHidden = false
            bottomViewHeighConstraint.constant = 480.0
            diagnoseLargePlantImageView.isHidden = false
            
            if let image = model.startDiagnose?.plant.description.image {
                diagnoseLargePlantImageView.kf.setImage(with: URL(string: image.urlIosFull ?? ""), options: [.transition(.fade(0.25))])
                diagnoseSmallPlantImageView.kf.setImage(with: URL(string: image.urlIosPrev ?? ""), options: [.transition(.fade(0.25))])
            }
            
//            diagnoseLargePlantImageView.kf.setImage(with: URL(string: model.startDiagnose?.plant.description.image.urlIosFull ?? ""), options: [.transition(.fade(0.25))])
//            diagnoseSmallPlantImageView.kf.setImage(with: URL(string: model.startDiagnose?.plant.description.image.urlIosPrev ?? ""), options: [.transition(.fade(0.25))])
            diagnoseFirstPlantNameLabel.text = result.plant.description.name
            diagnoseSecondPlantNameLabel.text = result.plant.description.names ?? ""
            diagnoseTimeLabel.text = dateFormatter.string(from: Date())
            diagnoseTitleLabel.text = result.desease.name
            diagnoseInfoLabel.text = result.desease.description
        } else {
            bottomViewHeighConstraint.constant = 120.0
            diagnosingNoResultView.isHidden = false
            noDiagnoseView.isHidden = false
            noDiagnoseImageView.image = capturedImage
        }
    }
    
    func failure(error: String) {
        
    }
}

//----------------------------------------------
// MARK: - Camera Setup
//----------------------------------------------

extension DiagnosisController {
    
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

extension DiagnosisController: AVCaptureVideoDataOutputSampleBufferDelegate {
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
