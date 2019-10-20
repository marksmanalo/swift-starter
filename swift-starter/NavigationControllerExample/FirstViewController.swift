//
//  FirstViewController.swift
//  NavigationControllerExample
//
//  Created by Mark Manalo on 2/5/19.
//  Copyright © 2019 Mark Manalo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(label)
    view.setNeedsUpdateConstraints()
  }
  
  override func updateViewConstraints() {
    super.updateViewConstraints()
    
        labelConstraints()
  }
  
  var label: UILabel = {
    var view = UILabel()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.text = "First View Controller"
    view.textAlignment = .center
    return view
  }()
  
  func labelConstraints() {
    // Center button in Page View
    NSLayoutConstraint(
      item: label,
      attribute: .centerX,
      relatedBy: .equal,
      toItem: view,
      attribute: .centerX,
      multiplier: 1.0,
      constant: 0.0)
      .isActive = true
    
    // Set Width to be 80% of the Page View Width
    NSLayoutConstraint(
      item: label,
      attribute: .width,
      relatedBy: .equal,
      toItem: view,
      attribute: .width,
      multiplier: 0.8,
      constant: 0.0)
      .isActive = true
    
    // Set Y Position Relative to Bottom of Page View
    NSLayoutConstraint(
      item: label,
      attribute: .centerY,
      relatedBy: .equal,
      toItem: view,
      attribute: .centerY,
      multiplier: 1.0,
      constant: 0.0)
      .isActive = true
  }
}
