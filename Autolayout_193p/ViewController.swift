//
//  ViewController.swift
//  Autolayout_193p
//
//  Created by Worship Arts on 5/8/15.
//  Copyright (c) 2015 Shane Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var loggedInUser: User? { didSet { updateUI() }}
    var secure: Bool = false { didSet { updateUI() }}
    
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    
    
    private func updateUI(){
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
        //OPTIONAL CHAINING
        nameLabel.text = loggedInUser?.name
        companyLabel.text = loggedInUser?.company
        imageView.image = loggedInUser?.image
    }
    
    
    
    
    @IBAction func toggleSecurity() {
        secure = !secure
    }
    
    
    
    
    
    @IBAction func login() {
        loggedInUser = User.login(loginField.text ?? "", password: passwordField.text ?? "")
        }
    
    
    
    //a
    
    
}// ViewController

extension User
{
    var image: UIImage? {
        if let image = UIImage(named: login ){
            return image
        } else {
            return UIImage(named: "unknown_user")
        }
    }
}







