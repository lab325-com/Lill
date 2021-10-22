
import UIKit
import AVFoundation

class DiagnosisController: UIViewController {
    
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
    @IBOutlet weak var diagnosingResultView: UIView!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var capturedView: UIView!
    
    @IBOutlet weak var capturedImageView: UIImageView!
    
    @IBOutlet weak var startDiagnosingButton: UIButton!
    @IBOutlet weak var flashButton: UIButton!
    @IBOutlet weak var diagnoseButton: UIButton!
    @IBOutlet weak var retakeButton: UIButton!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var onboardingInfoLabel: UILabel!
    @IBOutlet weak var previewInfoLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
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
        
        diagnosingCaptureView.isHidden = true
        diagnosingPreviewView.isHidden = false
        flashButton.isHidden = true
    }
    
    @IBAction func retakeAction(_ sender: Any) {
        capturedImage = nil
        capturedImageView.image = nil
        
        diagnosingPreviewView.isHidden = true
        diagnosingCaptureView.isHidden = false
        flashButton.isHidden = false
        
        setupAndStartCaptureSession()
    }

    @IBAction func diagnoseAction(_ sender: Any) {
        
    }

    @IBAction func restartAction(_ sender: Any) {
        
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

//            self.presenter.uploadPhoto(img: image.description)
        }
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
