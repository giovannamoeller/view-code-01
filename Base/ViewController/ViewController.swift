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
    
    let greenView = UIView()
    greenView.backgroundColor = .systemGreen
    let pinkView = UIView()
    pinkView.backgroundColor = .systemPink
    let cyanView = UIView()
    cyanView.backgroundColor = .systemCyan
    
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
    
    let topStackView = UIStackView(arrangedSubviews: [greenView, pinkView, cyanView])
    topStackView.distribution = .fillEqually
    
    let bottomStackView = UIStackView(arrangedSubviews: [orangeView, yellowView, tealView, purpleView, brownView])
    bottomStackView.distribution = .fillEqually
    
    let mainView = UIView()
    mainView.backgroundColor = .systemIndigo
    
    let stackView = UIStackView(arrangedSubviews: [topStackView, mainView, bottomStackView])
    view.addSubview(stackView)
    stackView.axis = .vertical
    stackView.distribution = .fillEqually
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

