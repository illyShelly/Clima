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
    
    searchTextField.delegate = self
    
    //    keybord react the same work as search button ->  edit/validate text
    //    weatherVC's class -> textfield should report back to VC
    //    setting viewController as delegate e.x.: user start typing, end, ...
  }
  
  //  search button
  @IBAction func searchPressed(_ sender: UIButton) {
    //    closing the keyboard
    searchTextField.endEditing(true)
    print(searchTextField.text!)
  }
  
  //  go/return button on the keyboard
  //  related method with delegate -> ask delegate whether texfield should processed the go/return button on the keyboard
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    //    closing the keyboard
    searchTextField.endEditing(true)
    print(searchTextField.text!)
    return true // textField allowed to run
  }
  
  //  'should' -> asking VC what to do? -> yes if textfield has any content already otherwise -> placeholder to write something
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    //    here textField as parameter from UITextField class
    //    means every (potential) textField in the whole app No matter which one
    if textField.text != "" {
      return true
    } else {
      textField.placeholder = "Type something"
      return false
    }
  }
  
  //  'clear' the textfield after search button pressed
  func textFieldDidEndEditing(_ textField: UITextField) {
    //    use searchTextField.text to get weather for that city
    searchTextField.text = ""
  }
}

