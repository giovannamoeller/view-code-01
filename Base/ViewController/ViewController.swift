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
    
    let topStackView = TopStackView()
    
    let bottomStackView = BottomStackView()
    
    let mainView = UIView()
    mainView.backgroundColor = .systemIndigo
    
    let textView = MainTextView()
    mainView.addSubview(textView)
    textView.configureConstraints()
    
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

