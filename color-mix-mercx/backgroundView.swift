//
//  backgroundView.swift
//  color-mix-mercx
//
//  Created by iOS Lab on 29/05/24.
//

import UIKit

class backgroundView: UIViewController {
    
    var colorBackground:UIColor? 
    
    @IBOutlet var fullScreen: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func teste(testeRecebido: Any){
        print("teste")
        print(testeRecebido)
    }

}
