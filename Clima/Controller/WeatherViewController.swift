//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var conditionImageView: UIImageView!
  @IBOutlet weak var temperatureLabel: UILabel!
  @IBOutlet weak var cityLabel: UILabel!
  @IBOutlet weak var searchTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    searchTextField.delegate = self //weatherVC's class -> textfield should report back to VC
  }
  
  @IBAction func searchPressed(_ sender: UIButton) {
    //    closing the keyboard
    searchTextField.endEditing(true)
    print(searchTextField.text!)
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    searchTextField.endEditing(true)
    print(searchTextField.text!)
    return true // textField allowed to run
  }
  
}

