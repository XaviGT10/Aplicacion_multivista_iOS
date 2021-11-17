//
//  ViewController.swift
//  TareaMultivista
//
//  Created by Xavier Giron Tomas on 20/10/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let pantallas = ["Pantalla 2", "Pantalla 3", "Pantalla 4"]
    var pickedScreen: Int = 55
        
    var mySize: CGFloat = 0.0
    
    let view2 = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "view2") as ViewController2
    let view3 = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "view3") as ViewController3
    let view4 = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "view4") as ViewController4
    
    @IBOutlet weak var etiqueta1: UILabel!
    var variableDeIntercambio: String?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pantallas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pantallas[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickedScreen = row
        print(pickedScreen)
        
    }

    
    @IBAction func txtEtiqueta1(_ sender: UITextField) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cambiaSize(mySize)
        cambiaColor(view2.colores)
    }
    
    @IBAction func cambiaSize(_ sender: Any){
        print(mySize)
        
        etiqueta1.font = etiqueta1.font.withSize(mySize)
    }

    @IBAction func cambiaColor(_ sender: Any){
                
        if variableDeIntercambio == "Rojo" {
            etiqueta1.textColor = UIColor.red
        }
        if variableDeIntercambio == "Verde" {
            etiqueta1.textColor = UIColor.green
        }
        if variableDeIntercambio == "Azul" {
            etiqueta1.textColor = UIColor.link
        }
        if variableDeIntercambio == "Negro" {
            etiqueta1.textColor = UIColor.black
        }
    }
    
    
    @IBAction func btnPickedScreen(_ sender: Any) {
        if pickedScreen == 0  {
            view2.modalPresentationStyle = .fullScreen
            present(view2, animated: true)
        }
        if pickedScreen == 1 {
            view3.modalPresentationStyle = .fullScreen
            present(view3, animated: true)
        }
        if pickedScreen == 2 {
            view4.modalPresentationStyle = .fullScreen
            present(view4, animated: true)
        }
    }
}

