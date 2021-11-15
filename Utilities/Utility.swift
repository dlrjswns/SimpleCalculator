//
//  Utility.swift
//  SimpleCalculator
//
//  Created by 이건준 on 2021/10/18.
//

import UIKit

class Utility{
    static let shared = Utility()
    
    func makeCircleBtn(title:String, tintColor:UIColor, backgroundcolor:UIColor, radius:CGFloat)->UIButton{
        let btn = UIButton(type: UIButton.ButtonType.system)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        btn.setTitle(title, for: UIControl.State.normal)
        btn.widthAnchor.constraint(equalToConstant: radius).isActive = true
        btn.heightAnchor.constraint(equalToConstant: radius).isActive = true
        btn.layer.cornerRadius = radius/2
        btn.backgroundColor = backgroundcolor
        btn.tintColor = tintColor
        btn.addTarget(SimpleCalculator(), action: #selector(SimpleCalculator.tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return btn
    }
    
    func makeOperatorBtn(title:String, tintColor:UIColor, backgroundcolor:UIColor, radius:CGFloat)->UIButton{
        let btn = UIButton(type: UIButton.ButtonType.system)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        btn.setTitle(title, for: UIControl.State.normal)
        btn.widthAnchor.constraint(equalToConstant: radius).isActive = true
        btn.heightAnchor.constraint(equalToConstant: radius).isActive = true
        btn.layer.cornerRadius = radius/2
        btn.backgroundColor = backgroundcolor
        btn.tintColor = tintColor
        btn.addTarget(SimpleCalculator(), action: #selector(SimpleCalculator.tapOperator(_:)), for: UIControl.Event.touchUpInside)
        return btn
    }
}
