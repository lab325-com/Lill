//
//  AddCoverIdentifierController.swift
//  Lill
//
//  Created by Andrey S on 05.11.2021.
//

import UIKit
import AVFoundation

class AddCoverIdentifierController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var captureButton: UIButton!
    @IBOutlet weak var flashButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private poperty
    //----------------------------------------------
    
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
        hiddenNavigationBar = true
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        borderView.layer.cornerRadius = 24
        borderView.layer.borderWidth = 1
        borderView.layer.borderColor = UIColor.white.cgColor
        
        bottomView.layer.cornerRadius = 24.0
        bottomView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        captureButton.setTitle("", for: .normal)
        closeButton.setTitle("", for: .normal)
        
        setupAndStartCaptureSession()
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
    
    @IBAction func actionClose(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func galleryAction(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.sourceType = .savedPhotosAlbum
        vc.mediaTypes = ["public.image"]
        
        present(vc, animated: true)
    }
}

//----------------------------------------------
// MARK: - UIImagePickerControllerDelegate
//----------------------------------------------

extension AddCoverIdentifierController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        guard let image = info[.originalImage] as? UIImage else {
            print("No image found")
            return
        }
        
        
    }
}

//----------------------------------------------
// MARK: - AVCaptureVideoDataOutputSampleBufferDelegate
//----------------------------------------------

extension AddCoverIdentifierController: AVCaptureVideoDataOutputSampleBufferDelegate {
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        if !takePicture { return }
        
        guard let cvBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        let ciImage = CIImage(cvImageBuffer: cvBuffer)
        let uiImage = UIImage(ciImage: ciImage)
        
        DispatchQueue.main.async {
            self.captureSession.stopRunning()
            self.previewLayer?.removeFromSuperlayer()
            
            //self.capturedImageView.image = uiImage
            self.capturedImage = uiImage
            self.takePicture = false
        }
    }
}

//----------------------------------------------
// MARK: - Camera Setup
//----------------------------------------------

extension AddCoverIdentifierController {
    
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
