//
//  ViewController.swift
//  Base
//
//  Created by Giovanna Moeller on 15/01/22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureUI()
  }

  func configureUI() {
    
    let orangeView = UIView()
    orangeView.backgroundColor = .systemGreen
    let yellowView = UIView()
    yellowView.backgroundColor = .systemYellow
    let tealView = UIView()
    tealView.backgroundColor = .systemTeal
    let purpleView = UIView()
    purpleView.backgroundColor = .systemPurple
    let brownView = UIView()
    brownView.backgroundColor = .systemBrown
    
    let textView = UILabel()
    textView.text = "Built with View Code :D"
    textView.textColor = .white
    textView.font = .systemFont(ofSize: 24.0, weight: .bold)
    
    let topStackView = TopStackView()
    
    let bottomStackView = UIStackView(arrangedSubviews: [orangeView, yellowView, tealView, purpleView, brownView])
    bottomStackView.distribution = .fillEqually
    
    topStackView.heightAnchor.constraint(equalToConstant: 96).isActive = true
    bottomStackView.heightAnchor.constraint(equalToConstant: 126).isActive = true
    
    let mainView = UIView()
    mainView.backgroundColor = .systemIndigo
    
    mainView.addSubview(textView)
    
    textView.translatesAutoresizingMaskIntoConstraints = false
    textView.centerXAnchor.constraint(equalTo: textView.superview!.centerXAnchor).isActive = true
    textView.centerYAnchor.constraint(equalTo: textView.superview!.centerYAnchor).isActive = true
    
    let stackView = UIStackView(arrangedSubviews: [topStackView, mainView, bottomStackView])
    view.addSubview(stackView)
    stackView.axis = .vertical
    fillSubview(sv: stackView)
    
  }
  
  func fillSubview(sv: UIStackView) {
    sv.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      sv.topAnchor.constraint(equalTo: sv.superview!.topAnchor),
      sv.trailingAnchor.constraint(equalTo: sv.superview!.trailingAnchor),
      sv.bottomAnchor.constraint(equalTo: sv.superview!.bottomAnchor),
      sv.leadingAnchor.constraint(equalTo: sv.superview!.leadingAnchor)
    ])
  }
  
}

