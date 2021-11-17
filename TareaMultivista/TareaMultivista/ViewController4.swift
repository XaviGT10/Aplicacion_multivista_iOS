//
//  ViewController4.swift
//  TareaMultivista
//
//  Created by Xavier Giron Tomas on 20/10/21.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnVolver(_ sender: UIButton) {
        let view3 = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "view3") as ViewController3
        view3.modalPresentationStyle = .fullScreen
    present(view3, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
