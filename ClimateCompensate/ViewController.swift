//
//  ViewController.swift
//  ClimateCompensate
//
//  Created by Betina Andersson on 2019-05-30.
//  Copyright © 2019 Betina Andersson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addBackground(imageName: "nature", contentMode: .scaleAspectFill)
        setupView()
    }
    
    let inputsContainerView : UIView = {
        let cv = UIView()
        cv.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).withAlphaComponent(0.75)
        cv.layer.cornerRadius = 5
        cv.layer.masksToBounds = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let pageTitle: UILabel = {
        let label = UILabel()
        label.text = "climate compensate your carbon emissions."
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 3
        label.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let infoText: UITextView = {
        let text = UITextView()
        text.text = "You know the world really cares about the environment, and so should you! You should climate compensate, but you don't have to spend time and  money where it doesn't matter. \n \n We will tell you how you could invest your money in green funds. Your money will make the planet greener, and whilst you climate compensate you could earn money!"
        text.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        text.font = text.font?.withSize(16)
        text.textAlignment = NSTextAlignment.center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Calculate", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        button.addTarget(self, action: #selector(buttonMoveOn), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func buttonMoveOn(sender: UIButton) {
        print("User want tot calculate carbon emissions")
        let calculateEmissionsTableViewController = CalculateEmissionTableViewController()
        present(calculateEmissionsTableViewController, animated: true, completion: nil)
    }
    
    func setupView() {
        view.addSubview(inputsContainerView)
        inputsContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        inputsContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 420).isActive = true
        
        inputsContainerView.addSubview(pageTitle)
        pageTitle.leadingAnchor.constraint(equalTo: inputsContainerView.leadingAnchor, constant: 16).isActive = true
        pageTitle.trailingAnchor.constraint(equalTo: inputsContainerView.trailingAnchor, constant: -16).isActive = true
        pageTitle.topAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: 16).isActive = true
        pageTitle.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        inputsContainerView.addSubview(infoText)
        infoText.topAnchor.constraint(equalTo: pageTitle.bottomAnchor, constant: 16).isActive = true
        infoText.trailingAnchor.constraint(equalTo: inputsContainerView.trailingAnchor, constant: -16).isActive = true
        infoText.leadingAnchor.constraint(equalTo: inputsContainerView.leadingAnchor, constant: 16).isActive = true
        infoText.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        inputsContainerView.addSubview(continueButton)
        continueButton.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        continueButton.bottomAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: -16).isActive = true
        continueButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, multiplier: 0.8).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }

}

