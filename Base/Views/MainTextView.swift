//
//  MainTextView.swift
//  Base
//
//  Created by Giovanna Moeller on 16/01/22.
//

import UIKit

class MainTextView: UILabel {

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.text = "Built with View Code :D"
    self.textColor = .white
    self.font = .systemFont(ofSize: 24.0, weight: .bold)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configureConstraints() {
    self.translatesAutoresizingMaskIntoConstraints = false
    self.centerXAnchor.constraint(equalTo: self.superview!.centerXAnchor).isActive = true
    self.centerYAnchor.constraint(equalTo: self.superview!.centerYAnchor).isActive = true
  }
  
}
