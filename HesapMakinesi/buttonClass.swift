//
//  buttonClass.swift
//  HesapMakinesi
//
//  Created by Doğukan Doğan on 14.06.2022.
//

import Foundation
import UIKit

class buttonClass {
    
    var buttonTitle : String
    var buttonTitleColor: UIColor
    var buttonBackgroundColor : UIColor
    var buttonCornerRadius : Double
    var buttonBorder : CGFloat
    var buttonBorderColor: UIColor
    var frame : CGRect
    var button : UIButton
    
    init(buttonTitleInıt: String, buttonTitleColorInıt: UIColor, buttonBackgroundColorInıt: UIColor, buttonCornerRadiusInıt: Double, buttonBorderInıt: CGFloat, buttonBorderColorInıt: UIColor, frameInıt: CGRect, buttonInıt: UIButton){
        
        button = buttonInıt
        buttonTitle = buttonTitleInıt
        buttonTitleColor = buttonTitleColorInıt
        buttonBackgroundColor = buttonBackgroundColorInıt
        buttonCornerRadius = buttonCornerRadiusInıt
        buttonBorder = buttonBorderInıt
        buttonBorderColor = buttonBorderColorInıt
        frame = frameInıt
        
        button.setTitle(buttonTitle, for: UIControl.State.normal)
        button.setTitleColor(buttonTitleColor, for: UIControl.State.normal)
        button.backgroundColor = buttonBackgroundColor
        button.layer.cornerRadius = buttonCornerRadius
        button.layer.borderWidth = buttonBorder
        button.layer.borderColor = buttonBackgroundColor.cgColor
        button.frame = frame
        button.addTarget(self, action: #selector(click), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func click(){
        
    }
}
