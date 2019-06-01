//
//  UNCalculation.swift
//  ClimateCompensate
//
//  Created by Betina Andersson on 2019-05-31.
//  Copyright © 2019 Betina Andersson. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class UNCalculation: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    let containerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    let continueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        button.addTarget(self, action: #selector(continueToInvestment), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackground(imageName: "nature", contentMode: .scaleAspectFill)
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: CGRect( x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height - 200 ), configuration: webConfiguration)
        //self.view.addSubview(webView)
        
        self.view.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 100).isActive = true
        
        containerView.addSubview(webView)
        
        let myURL = URL(string: "https://offset.climateneutralnow.org/footprintcalc")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        self.webView.allowsBackForwardNavigationGestures = true
        
        self.view.addSubview(continueButton)
        continueButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 24).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -24).isActive = true
        continueButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func continueToInvestment(send: UIButton) {
        print("UER WANT TO CALCULATE")
    }
    
}
