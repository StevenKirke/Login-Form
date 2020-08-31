//
//  Style.swift
//  Login Form
//
//  Created by Steven Kirke on 31.08.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class Style {
    
    func animate(view_animate: UIView) {
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseInOut, animations: {
            view_animate.transform = CGAffineTransform(translationX: 30, y: 0.0)
        }) { (_) in
            UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseInOut, animations: {
                view_animate.transform = CGAffineTransform(translationX: -30.0, y: 0.0)
                
            }){ (_) in
            UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseInOut, animations: {
                view_animate.transform = CGAffineTransform(translationX: 0.0, y: 0.0)
                
            }, completion: nil)}
        }
    }
    
    func setLeftImage(image: String, textField: UITextField) {
        let imageView = UIImageView(image: UIImage(named: image))
         imageView.frame = CGRect(
            x: 10,
            y: 5,
            width: imageView.image!.size.width,
            height: imageView.image!.size.height)
         let paddingView: UIView = UIView.init(frame: CGRect(
            x: 50,
            y: 0,
            width: 30,
            height: 30))
         paddingView.addSubview(imageView)
         textField.leftViewMode = .always
         textField.leftView = paddingView
      }
}
