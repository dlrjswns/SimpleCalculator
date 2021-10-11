//
//  SimpleCalculator.swift
//  SimpleCalculator
//
//  Created by 이건준 on 2021/10/11.
//

import UIKit

class SimpleCalculator:UIViewController{
    
    lazy var textLabel:UILabel={
        let label = UILabel()
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 60, weight: UIFont.Weight.regular)
        label.textAlignment = .right
        label.widthAnchor.constraint(equalToConstant: view.frame.width-50).isActive = true
        return label
    }()
    lazy var oneButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("1", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = ((view.frame.width-30)/4)/2
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    lazy var twoButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("2", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    lazy var threeButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("3", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    lazy var fourButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("4", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    lazy var fiveButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("5", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    lazy var sixButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("6", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    lazy var sevenButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("7", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    lazy var eightButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("8", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    lazy var nineButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("9", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    lazy var zeroButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("0", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/2 + 10).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        button.addTarget(self, action: #selector(tapNumber(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    lazy var pointButton:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle(".", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4 ).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        button.backgroundColor = .tertiarySystemBackground
        button.tintColor = .white
        return button
    }()
    
    lazy var equalOperator:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("=", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.backgroundColor = .systemOrange
        button.tintColor = .white
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        return button
    }()
    
    lazy var plusOperator:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("+", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.backgroundColor = .systemOrange
        button.tintColor = .white
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        return button
    }()
    
    lazy var minusOperator:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("-", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.backgroundColor = .systemOrange
        button.tintColor = .white
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        return button
    }()
    
    lazy var multiOperator:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("x", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.backgroundColor = .systemOrange
        button.tintColor = .white
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        return button
    }()
    
    lazy var divideOperator:UIButton={
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("/", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.regular)
        button.backgroundColor = .systemOrange
        button.tintColor = .white
        button.widthAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.heightAnchor.constraint(equalToConstant: (view.frame.width-30)/4).isActive = true
        button.layer.cornerRadius = (view.frame.width-30)/8
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    //MARK: -Objc
    @objc func tapNumber(_ sender:UIButton){
        guard let text = sender.titleLabel!.text else{return}
        if textLabel.text == "0"{
            textLabel.text = text
        }else{
            textLabel.text = textLabel.text! + text
        }
    }
    
    //MARK: -Configure
    func configure(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(oneButton)
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        oneButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        oneButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
    
        view.addSubview(twoButton)
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        twoButton.centerYAnchor.constraint(equalTo: oneButton.centerYAnchor).isActive = true
        twoButton.leftAnchor.constraint(equalTo: oneButton.rightAnchor, constant: 10).isActive = true
        
        view.addSubview(threeButton)
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        threeButton.centerYAnchor.constraint(equalTo: oneButton.centerYAnchor).isActive = true
        threeButton.leftAnchor.constraint(equalTo: twoButton.rightAnchor, constant: 10).isActive = true
        
        view.addSubview(fourButton)
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        fourButton.centerXAnchor.constraint(equalTo: oneButton.centerXAnchor).isActive = true
        fourButton.bottomAnchor.constraint(equalTo: oneButton.topAnchor, constant: -10).isActive = true
        
        view.addSubview(fiveButton)
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        fiveButton.centerYAnchor.constraint(equalTo: fourButton.centerYAnchor).isActive = true
        fiveButton.leftAnchor.constraint(equalTo: fourButton.rightAnchor, constant: 10).isActive = true
        
        view.addSubview(sixButton)
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        sixButton.centerYAnchor.constraint(equalTo: fourButton.centerYAnchor).isActive = true
        sixButton.leftAnchor.constraint(equalTo: fiveButton.rightAnchor, constant: 10).isActive = true
        
        view.addSubview(sevenButton)
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        sevenButton.centerXAnchor.constraint(equalTo: fourButton.centerXAnchor).isActive = true
        sevenButton.bottomAnchor.constraint(equalTo: fourButton.topAnchor, constant: -10).isActive = true
        
        view.addSubview(eightButton)
        eightButton.translatesAutoresizingMaskIntoConstraints = false
        eightButton.centerYAnchor.constraint(equalTo: sevenButton.centerYAnchor).isActive = true
        eightButton.leftAnchor.constraint(equalTo: sevenButton.rightAnchor, constant: 10).isActive = true
        
        view.addSubview(nineButton)
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        nineButton.centerYAnchor.constraint(equalTo: sevenButton.centerYAnchor).isActive = true
        nineButton.leftAnchor.constraint(equalTo: eightButton.rightAnchor, constant: 10).isActive = true
        
        view.addSubview(zeroButton)
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        zeroButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        zeroButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
        view.addSubview(pointButton)
        pointButton.translatesAutoresizingMaskIntoConstraints = false
        pointButton.centerXAnchor.constraint(equalTo: threeButton.centerXAnchor).isActive = true
        pointButton.leftAnchor.constraint(equalTo: zeroButton.rightAnchor, constant: 10).isActive = true
        pointButton.centerYAnchor.constraint(equalTo: zeroButton.centerYAnchor).isActive = true
        
        view.addSubview(equalOperator)
        equalOperator.translatesAutoresizingMaskIntoConstraints = false
        equalOperator.centerYAnchor.constraint(equalTo: pointButton.centerYAnchor).isActive = true
        equalOperator.leftAnchor.constraint(equalTo: pointButton.rightAnchor, constant: 10).isActive = true
        
        view.addSubview(plusOperator)
        plusOperator.translatesAutoresizingMaskIntoConstraints = false
        plusOperator.centerXAnchor.constraint(equalTo: equalOperator.centerXAnchor).isActive = true
        plusOperator.centerYAnchor.constraint(equalTo: threeButton.centerYAnchor).isActive = true
        
        view.addSubview(minusOperator)
        minusOperator.translatesAutoresizingMaskIntoConstraints = false
        minusOperator.centerXAnchor.constraint(equalTo: plusOperator.centerXAnchor).isActive = true
        minusOperator.centerYAnchor.constraint(equalTo: sixButton.centerYAnchor).isActive = true
        
        view.addSubview(multiOperator)
        multiOperator.translatesAutoresizingMaskIntoConstraints = false
        multiOperator.centerXAnchor.constraint(equalTo: minusOperator.centerXAnchor).isActive = true
        multiOperator.centerYAnchor.constraint(equalTo: nineButton.centerYAnchor).isActive = true
        
        view.addSubview(divideOperator)
        divideOperator.translatesAutoresizingMaskIntoConstraints = false
        divideOperator.centerXAnchor.constraint(equalTo: multiOperator.centerXAnchor).isActive = true
        divideOperator.bottomAnchor.constraint(equalTo: multiOperator.topAnchor, constant: -10).isActive = true
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: divideOperator.topAnchor, constant: -10).isActive = true
        
    }
}
