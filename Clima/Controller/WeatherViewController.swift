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
  
  //  the keyboard 'go' button related
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    searchTextField.endEditing(true) //    closing the keyboard
    print(searchTextField.text!)
    return true // textField allowed to run
  }
  
  //  fce for all potential textField in the app
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    if textField.text != "" {
      return true
    } else {
      textField.placeholder = "Type something"
      return false
    }
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    //    use searchTextField.text to get weather for that city
    searchTextField.text = ""
  }
}

