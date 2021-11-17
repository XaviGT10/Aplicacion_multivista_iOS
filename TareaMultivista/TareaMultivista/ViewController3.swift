//
//  ViewController3.swift
//  TareaMultivista
//
//  Created by Xavier Giron Tomas on 20/10/21.
//

import UIKit

class ViewController3: UIViewController {
        
    var variable: CGFloat = 0.0
    
    @IBOutlet weak var sizeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func miSlider(_ sender: UISlider) {
        variable = CGFloat(sender.value)
        print(variable)
        
    }
    
    
    @IBAction func btnIraVista4(_ sender: UIButton) {
        let view4 = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "view4") as ViewController4
        view4.modalPresentationStyle = .fullScreen
        present(view4, animated: true)
    }
    
    @IBAction func btnVolver(_ sender: UIButton) {
        let view1 = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "view1") as ViewController
        print(variable)
        view1.mySize = variable
        view1.modalPresentationStyle = .fullScreen
    present(view1, animated: true)
    }
}
