//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Milos Jovanovic on 06/04/2019.
//  Copyright © 2019 Milos Jovanovic. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredCityName(city: String)
}

class ChangeCityViewController: UIViewController {
    
    var delegate: ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func getWeatherPressed(_ sender: Any) {
        
        

        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    

    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
