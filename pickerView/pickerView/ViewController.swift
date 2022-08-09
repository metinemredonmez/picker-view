//
//  ViewController.swift
//  pickerView
//
//  Created by Apple on 9.08.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   

    @IBOutlet weak var pickerview: UIPickerView!
    
    @IBOutlet weak var labelview: UILabel!
    
    
    var countries : [String] = [String]()
    
    
    var secilenUlke: String?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        countries = ["england","spain","china","USA","russia","germany","italy"]
        
        pickerview.dataSource = self
        pickerview.delegate = self
        
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return countries.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        labelview.text = countries[row]
        
        secilenUlke = countries[row]
    }
    
    


}

