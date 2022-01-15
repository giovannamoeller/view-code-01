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
    
    let blueView = UIView()
    blueView.backgroundColor = .blue
    
    let magentaView = UIView()
    magentaView.backgroundColor = .magenta
    
    let orangeView = UIView()
    orangeView.backgroundColor = .orange
    
    let stackView = UIStackView(arrangedSubviews: [blueView, magentaView, orangeView])
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
