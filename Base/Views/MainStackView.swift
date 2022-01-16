//
//  MainStackView.swift
//  Base
//
//  Created by Giovanna Moeller on 16/01/22.
//

import UIKit

class MainStackView: UIStackView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    [TopStackView(), MainView(), BottomStackView()].forEach { view in
      addArrangedSubview(view)
    }
    axis = .vertical
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func fillSubview() {
    self.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      self.topAnchor.constraint(equalTo: self.superview!.topAnchor),
      self.trailingAnchor.constraint(equalTo: self.superview!.trailingAnchor),
      self.bottomAnchor.constraint(equalTo: self.superview!.bottomAnchor),
      self.leadingAnchor.constraint(equalTo: self.superview!.leadingAnchor)
    ])
  }
  
}
