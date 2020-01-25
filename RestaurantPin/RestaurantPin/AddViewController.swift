//
//  AddViewController.swift
//  RestaurantPin
//
//  Created by Luis Roberto Blancas Lemini on 24/01/20.
//  Copyright © 2020 Luis Roberto Blancas Lemini. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {


    var nameSelected = String()
    var ageSelected  = Int()
    var sexSelected  = String()
    var occupationSelected   = String()
    var domicileSelected     = String()
    var telephoneSelected   = Int()

    private let sexPickerData = ["Hombre","Mujer"]
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexPicker: UIPickerView!
    @IBOutlet weak var ocupationField: UITextField!
    @IBOutlet weak var domicileField: UITextField!
    @IBOutlet weak var telephoneField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sexPicker.dataSource = self
        sexPicker.delegate = self
        
    }

    @IBAction func addNewPatient(_ sender: Any) {
        
        guard let name = nameField.text else{return}
        guard let occupation = ocupationField.text else{return}
        guard let age = Int(ageField.text!) else {return}
        guard let domicile = domicileField.text else {return}
        guard let telephone = Int(telephoneField.text!) else {return}
        

        nameSelected = name
        ageSelected = age
        occupationSelected = occupation
        domicileSelected = domicile
        
        telephoneSelected = telephone
        
        
        let newPatient = Patient(name: nameSelected, age: age, sex: sexSelected, occupation: occupationSelected, domicile: domicileSelected, telephone: telephoneSelected)
        
        print(newPatient)
    }
    
    @IBAction func numericalTextFieldConfiguration(_ sender: Any) {
        
    }
    
}


extension AddViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sexPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sexPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        sexSelected = sexPickerData[row]
        
    }
    
    
}
