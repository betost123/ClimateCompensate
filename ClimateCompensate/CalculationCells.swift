//
//  CalculationCells.swift
//  ClimateCompensate
//
//  Created by Betina Andersson on 2019-05-30.
//  Copyright © 2019 Betina Andersson. All rights reserved.
//

import Foundation
import UIKit

class HeaderCell: UITableViewCell {
    let containerView : UIView = {
        let cv = UIView()
        cv.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).withAlphaComponent(0.75)
        cv.layer.cornerRadius = 5
        cv.layer.masksToBounds = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "calculate emissions."
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        label.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let infoText: UITextView = {
        let text = UITextView()
        text.text = "Calculate your carbon emissions here, and you will be presented with the price of your life style."
        text.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        text.font = text.font?.withSize(16)
        text.textAlignment = NSTextAlignment.center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        containerView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(infoText)
        infoText.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        infoText.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        infoText.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        infoText.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class EatingCell: UITableViewCell {
    let containerView : UIView = {
        let cv = UIView()
        cv.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).withAlphaComponent(0.75)
        cv.layer.cornerRadius = 5
        cv.layer.masksToBounds = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "your eating."
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        label.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let questionLabel: UILabel = {
       let label = UILabel()
        label.text = "Select the most fitting description of your diet"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let meatLoverButton: UIButton = {
       let button = UIButton()
        button.setTitle("Meat Lover", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let averageMeatEaterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Average Meat Eater", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let noBeefButton: UIButton = {
        let button = UIButton()
        button.setTitle("No Beef", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let vegetarianButton: UIButton = {
        let button = UIButton()
        button.setTitle("Vegetarian", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let veganButton: UIButton = {
        let button = UIButton()
        button.setTitle("Vegan", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func selectButton(sender: UIButton) {
        sender.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        print("user selected a diet choice")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 450).isActive = true
        
        containerView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(questionLabel)
        questionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        questionLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        questionLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(meatLoverButton)
        meatLoverButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 16).isActive = true
        meatLoverButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        meatLoverButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        meatLoverButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(averageMeatEaterButton)
        averageMeatEaterButton.topAnchor.constraint(equalTo: meatLoverButton.bottomAnchor, constant: 8).isActive = true
        averageMeatEaterButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        averageMeatEaterButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        averageMeatEaterButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(noBeefButton)
        noBeefButton.topAnchor.constraint(equalTo: averageMeatEaterButton.bottomAnchor, constant: 8).isActive = true
        noBeefButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        noBeefButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        noBeefButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true

        containerView.addSubview(vegetarianButton)
        vegetarianButton.topAnchor.constraint(equalTo: noBeefButton.bottomAnchor, constant: 8).isActive = true
        vegetarianButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        vegetarianButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        vegetarianButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(veganButton)
        veganButton.topAnchor.constraint(equalTo: vegetarianButton.bottomAnchor, constant: 8).isActive = true
        veganButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        veganButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        veganButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class LivingCell: UITableViewCell {
    let containerView : UIView = {
        let cv = UIView()
        cv.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).withAlphaComponent(0.75)
        cv.layer.cornerRadius = 5
        cv.layer.masksToBounds = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "your living."
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        label.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "Do you live in a house or an apartment?"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let houseButton: UIButton = {
        let button = UIButton()
        button.setTitle("House", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let apartmentButton: UIButton = {
        let button = UIButton()
        button.setTitle("Apartment", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func selectButton(sender: UIButton) {
        sender.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        print("user selected a diet choice")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        containerView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(questionLabel)
        questionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        questionLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        questionLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(houseButton)
        houseButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.4).isActive = true
        houseButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        houseButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 8).isActive = true
        houseButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 32).isActive = true
        
        containerView.addSubview(apartmentButton)
        apartmentButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.4).isActive = true
        apartmentButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        apartmentButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 8).isActive = true
        apartmentButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -32).isActive = true
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class CarTravelCell: UITableViewCell {
    let containerView : UIView = {
        let cv = UIView()
        cv.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).withAlphaComponent(0.75)
        cv.layer.cornerRadius = 5
        cv.layer.masksToBounds = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "your travelling by car."
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        label.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "How many kilometers do you travel by car on a weekly average?"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //TODO: Add on enter function so keyboard disappears
    let distanceTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = " 0 km"
        textField.layer.cornerRadius = 5
        textField.layer.masksToBounds = true
        textField.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        containerView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(questionLabel)
        questionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        questionLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        questionLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(distanceTextField)
        distanceTextField.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 8).isActive = true
        distanceTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        distanceTextField.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        distanceTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class FlightTravelCell: UITableViewCell {
    let containerView : UIView = {
        let cv = UIView()
        cv.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).withAlphaComponent(0.75)
        cv.layer.cornerRadius = 5
        cv.layer.masksToBounds = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "your travelling by plane."
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        label.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let questionLongDistanceLabel: UILabel = {
        let label = UILabel()
        label.text = "How often do you travel shorter distances (around 1 000km) by plane on an average year?"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 3
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let questionShortDistanceLabel: UILabel = {
        let label = UILabel()
        label.text = "How often do you travel by plane to a destination within EU on an average year?"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 3
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //TODO: Add on enter function so keyboard disappears
    let longDistanceTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = " 2 times"
        textField.layer.cornerRadius = 5
        textField.layer.masksToBounds = true
        textField.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    let shortDistanceTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = " 0 times"
        textField.layer.cornerRadius = 5
        textField.layer.masksToBounds = true
        textField.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        containerView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(questionShortDistanceLabel)
        questionShortDistanceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        questionShortDistanceLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        questionShortDistanceLabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        questionShortDistanceLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(shortDistanceTextField)
        shortDistanceTextField.topAnchor.constraint(equalTo: questionShortDistanceLabel.bottomAnchor, constant: 8).isActive = true
        shortDistanceTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        shortDistanceTextField.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        shortDistanceTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        containerView.addSubview(questionLongDistanceLabel)
        questionLongDistanceLabel.topAnchor.constraint(equalTo: shortDistanceTextField.bottomAnchor, constant: 8).isActive = true
        questionLongDistanceLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        questionLongDistanceLabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        questionLongDistanceLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(longDistanceTextField)
        longDistanceTextField.topAnchor.constraint(equalTo: questionLongDistanceLabel.bottomAnchor, constant: 8).isActive = true
        longDistanceTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        longDistanceTextField.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        longDistanceTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
 
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ResultCell: UITableViewCell {
    let containerView : UIView = {
        let cv = UIView()
        cv.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).withAlphaComponent(0.75)
        cv.layer.cornerRadius = 5
        cv.layer.masksToBounds = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "get your result."
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        label.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "Click the button to see how you can earn money and make a difference"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let resultButton: UIButton = {
        let button = UIButton()
        button.setTitle("Get results", for: .normal)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.setTitleColor(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let emojiLabel: UILabel = {
        let label = UILabel()
        label.text = "🍀💰"
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        containerView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(questionLabel)
        questionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        questionLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        questionLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        
        containerView.addSubview(resultButton)
        resultButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 8).isActive = true
        resultButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        resultButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        resultButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        containerView.addSubview(emojiLabel)
        emojiLabel.topAnchor.constraint(equalTo: resultButton.bottomAnchor, constant: 8).isActive = true
        emojiLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        emojiLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        emojiLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
