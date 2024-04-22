//
//  SignUpViewController.swift
//  IOS_101_Capstone Project
//
//  Created by Maneesha Reddy gurrala on 4/16/24.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapSignUpButton(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            // Optionally handle the case where email or password is not provided
            print("Email or password is missing.")
            return
        }

        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print(error.localizedDescription)
                self.showAlert(withMessage: "Failed to sign up: \(error.localizedDescription)")
            } else {
                // Assuming sign up was successful, inform the user
                self.showAlert(withMessage: "You have successfully signed up. Please log in.")
            }
        }
    }
    
    func showAlert(withMessage message: String) {
        let alert = UIAlertController(title: "Signup Successful", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            // Perform segue after the user taps "OK"
            self.performSegue(withIdentifier: "goToLogin", sender: self)
        }))
        present(alert, animated: true, completion: nil)
    }
}
