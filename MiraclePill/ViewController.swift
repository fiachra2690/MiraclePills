//
//  ViewController.swift
//  MiraclePill
//
//  Created by Fiachra Coyne on 05/01/2017.
//  Copyright © 2017 Fiachra Coyne. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var countyPicker: UIPickerView!
    @IBOutlet weak var countyPickerBtn: UIButton!
    @IBOutlet weak var buyNowBtnOutlet: UIButton!
    @IBOutlet weak var postCodelabel: UILabel!
    @IBOutlet weak var postCodeField: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    
    
    
    
    
    let counties = ["Galway", "Roscommon", "Leitrim", "Sligo", "Mayo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countyPicker.dataSource = self
        countyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func countyBtnPressed(_ sender: Any) {
        countyPicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return counties.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return counties[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countyPickerBtn.setTitle(counties[row], for: UIControlState.normal)
        countyPicker.isHidden = true
        countryLabel.isHidden = false
        countryField.isHidden = false
        postCodeField.isHidden = false
        postCodelabel.isHidden = false
    }

    @IBAction func buyNowBtnPressed(_ sender: Any) {
    }

}

