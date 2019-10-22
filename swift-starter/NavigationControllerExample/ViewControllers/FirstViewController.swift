//
//  FirstViewController.swift
//  NavigationControllerExample
//
//  Created by Mark Manalo on 2/5/19.
//  Copyright © 2019 Mark Manalo. All rights reserved.
//

import UIKit
import RxSwift

class FirstViewController: UIViewController {
  
  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var button: UIButton!
  @IBOutlet weak var textArea: UITextField!
  
  private let disposeBag = DisposeBag()
  
  var viewModel: FirstViewControllerViewModelProtocol!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    print("first view controller loaded")
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    
    print("first view controller appeared")
    
  }
  
  @IBAction func onTouch(_ sender: Any) {
    
    print("button touched")
    label.text = textArea.text
    
  }

}

// MARK: - Helpers

extension FirstViewController {
  
  
}
