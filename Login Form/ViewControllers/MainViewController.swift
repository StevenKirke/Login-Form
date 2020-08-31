//
//  MainViewController.swift
//  Login Form
//
//  Created by Steven Kirke on 30.08.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate{

    // MARK: IB Outlets
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var personView: UIImageView!
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    private let person = Person()
    private let style = Style()
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        blurView.frame = view.frame
        backgroundImage.addSubview(blurView)
        
        personView.layer.cornerRadius = personView.frame.height / 2
        
        style.setLeftImage(image: "Icon_Login_20.png", textField: loginField)
        style.setLeftImage(image: "Icon_Password_20.png", textField: passwordField)
        
        loginField.delegate = self
        passwordField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "barSeque" {
            let tabBarController = segue.destination as! UITabBarController
            let destinationVC = tabBarController.viewControllers?.first as! InitialVarController
            print("1")
            answerTextField()
            if let text = loginField.text {
                print(text)
                destinationVC.text = text
            }
        }
    }
    // MARK: IB Actions
    @IBAction func loginAction() {
        answerTextField()
        if loginField.text == person.user && passwordField.text == person.password {
            self.performSegue(withIdentifier: "barSeque", sender: self)
        }
    }
    
    // MARK: Private Methods
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        answerTextField()
        
        if loginField.text == person.user && passwordField.text == person.password {
            self.performSegue(withIdentifier: "barSeque", sender: self)
        }
        return true
    }
    
    internal func answerTextField() {

        if loginField.text == person.user {
            passwordField.becomeFirstResponder()
            passwordField.returnKeyType = .continue
            personView.image = UIImage(named: person.imageUser)
        } else {
            loginField.text = ""
            style.animate(view_animate: loginField)
        }
        
        if passwordField.text == person.password {
            loginField.resignFirstResponder()
        } else {
            passwordField.text = ""
            style.animate(view_animate: passwordField)
        }
    }
}
