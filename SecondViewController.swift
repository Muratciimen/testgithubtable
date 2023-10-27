//
//  SecondViewController.swift
//  tableViewExercise
//
//  Created by Murat Çimen on 8.06.2023.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pickerDays: UIPickerView!
    
    var pickerData = [
        "Pazartesi",
        "Salı",
        "Çarşamba",
        "Perşembe",
        "Cuma",
        "Cumartesi",
        "Pazar"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Light Tema Aktif"
        self.view.backgroundColor = UIColor.white
    }
    
    @IBAction func segmentedTheme(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        
        switch selectedIndex {
        case 0:
            titleLabel.text = "Light Tema Aktif"
            self.view.backgroundColor = UIColor.white
        case 1:
            titleLabel.text = "Dark Tema Aktif"
            self.view.backgroundColor = UIColor.gray
        default:
            print("")
        }
        
        pickerDays.reloadAllComponents()
    }
}

extension SecondViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label: UILabel
        
        if let view = view as? UILabel {
            label = view
        } else {
            label = UILabel()
        }
        
        label.text = pickerData[row]
        label.textColor = self.view.backgroundColor == UIColor.gray ? UIColor.white : UIColor.black
        
        return label
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerData[row] == "Pazar" {
            print("Bugün Tatil")
        }
    }
}
