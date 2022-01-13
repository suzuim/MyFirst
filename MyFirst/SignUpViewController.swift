//
//  SignUpViewController.swift
//  MyFirst
//
//  Created by 今井涼葉 on 2022/01/07.
//


import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var profileImageButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var alreadyHaveAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageButton.layer.cornerRadius = 85
        profileImageButton.layer.borderWidth = 1
         profileImageButton.layer.borderColor = CGColor(red: 245/255.0, green: 84/255.0, blue: 45/255.0, alpha: 1.0)
        
        registerButton.layer.cornerRadius = 12
        
        profileImageButton.addTarget(self, action: #selector(tappedProfileImageButton), for: .touchUpInside)
        
    }
    
    @objc private func tappedProfileImageButton() {
        print("tappedProfileImageButton")
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
}

extension SignUpViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @UIApplicationMain
    class AppDelegate: UIResponder, UIApplicationDelegate {

    }

}
