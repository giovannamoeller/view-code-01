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
    let mainStackView = MainStackView()
    view.addSubview(mainStackView)
    mainStackView.fillSubview()
  }
}

