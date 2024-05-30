//
//  ViewColor.swift
//  color-mix-mercx
//
//  Created by iOS Lab on 29/05/24.
//

import UIKit

class ViewColor: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    
    
    
    var backgroundColor:UIColor?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let color = backgroundColor {
            
            backgroundView.backgroundColor = color
        }
    }

    


}
