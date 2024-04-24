//
//  SignUpViewController.swift
//  IOS_101_Capstone Project
//
//  Created by Maneesha Reddy gurrala on 4/16/24.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapSignUpButton(_ sender: UIButton) {
       guard  let name = nameTextField.text, !name.isEmpty,
              let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            // Optionally handle the case where email or password is not provided
            print("Name,Email or password is missing.")
            return
        }

        Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
                guard let self = self else { return }
                if let error = error {
                    print(error.localizedDescription)
                    self.showAlert(title: "Signup Failed", message: error.localizedDescription)
                } else {
                    if let user = authResult?.user {
                        self.storeUserData(userId: user.uid, name: name, email: email)
                        self.showAlert(title: "Signup Successful", message: "You have successfully signed up. Please log in.")
                    }
                }
            }
        }
    
    private func storeUserData(userId: String, name: String, email: String) {
        let ref = Database.database().reference()
        ref.child("users").child(userId).setValue([
            "name": name,
            "email": email
        ]) { error, _ in
            if let error = error {
                print("Data could not be saved: \(error.localizedDescription)")
            } else {
                print("Data saved successfully!")
            }
        }
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            // Navigate back to the login screen or directly to home depending on your flow
            self.performSegue(withIdentifier: "goToLogin", sender: self)
        }))
        present(alert, animated: true, completion: nil)
    }
}
