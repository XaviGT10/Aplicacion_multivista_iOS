//
//  ViewController2.swift
//  TareaMultivista
//
//  Created by Xavier Giron Tomas on 20/10/21.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerColores: UIPickerView!
    let colores = ["Rojo", "Verde", "Azul", "Negro"]
    var pickedColor: Int = 55
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colores.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colores[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickedColor = row
        print("El numero de color")
        print(pickedColor)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func bntVolver(_ sender: UIButton) {
        let view1 = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "view1") as ViewController
        view1.modalPresentationStyle = .fullScreen
        view1.variableDeIntercambio = colores[pickerColores.selectedRow(inComponent: 0)]
        present(view1, animated: true)
    }
}
