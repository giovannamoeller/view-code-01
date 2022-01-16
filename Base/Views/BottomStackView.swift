//
//  BottomStackView.swift
//  Base
//
//  Created by Giovanna Moeller on 16/01/22.
//

import UIKit

class BottomStackView: UIStackView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    configureStackView()
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configureStackView() {
    [UIColor.systemOrange, .systemYellow, .systemTeal, .systemPurple, .systemBrown].forEach { color  in
      let view = UIView()
      view.backgroundColor = color
      self.addArrangedSubview(view)
    }
    self.distribution = .fillEqually
    self.heightAnchor.constraint(equalToConstant: 126).isActive = true
  }
}
