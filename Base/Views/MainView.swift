//
//  MainView.swift
//  Base
//
//  Created by Giovanna Moeller on 16/01/22.
//

import UIKit

class MainView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    configureView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configureView() {
    self.backgroundColor = .systemIndigo
    let textView = MainTextView()
    self.addSubview(textView)
    textView.configureConstraints()
  }

}
