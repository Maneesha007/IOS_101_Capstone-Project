//
//  ViewController.swift
//  IOS_101_Capstone Project
//
//  Created by Maneesha Reddy gurrala on 4/16/24.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTabLoginButton(_ sender: UIButton) {
        // Check if the email or password is empty
        guard let email = usernameTextField.text, !email.isEmpty else {
            print("Please enter your email.")
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            print("Please enter your password.")
            return
        }

        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                // Log the error to the console and show an alert or some feedback to the user
                print("Login failed with error: \(error.localizedDescription)")
                self.showLoginFailedAlert(message: error.localizedDescription)
            } else {
                // Assuming 'goToHome' is your segue identifier to the home screen
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
    }

    @IBAction func didTapCreateAccountButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showSignUp", sender: self)
    }
    
    private func showLoginFailedAlert(message: String) {
        let alert = UIAlertController(title: "Login Failed", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}
