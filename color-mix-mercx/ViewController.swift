//
//  ViewController.swift
//  color-mix-mercx
//
//  Created by iOS Lab 29 on 22/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewTeste: UIView!


    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var fullScreen: UIButton!
    
    @IBOutlet weak var save: UIButton!
    
    var colorSend: UIColor?
    
    override func viewDidLoad() {

        super.viewDidLoad()
        sliderZero()
        updateColor()
    }
    
    @IBAction func switchButton(_ sender: UISwitch) {
        disabledSlider()
        updateColor()
        
    }
    

    func updateColor() {
        
        checkAlpha()
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
            redSlider.isEnabled = true
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
            greenSlider.isEnabled = true
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
            blueSlider.isEnabled = true
        }
        alpha = CGFloat(alphaSlider.value)

        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        saveColor(color: color)
        viewTeste.backgroundColor = color
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func buttonSave(_ sender: Any ) {
//            saveColor(color: color)
    }
    
    @IBAction func fullScreenAction(_ sender: Any) {
        
        let secondVC = ViewColor(nibName: "ViewColor", bundle: nil)
        
        
        secondVC.backgroundColor = colorSend
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
    

    

    
    func disabledSlider(){
        redSlider.isEnabled = false
        blueSlider.isEnabled = false
        greenSlider.isEnabled = false
        checkAlpha()
    }
    
    func checkAlpha(){
        if redSlider.isEnabled && blueSlider.isEnabled && greenSlider.isEnabled{
            alphaSlider.isEnabled = false
        }else{
            alphaSlider.isEnabled = true
        }
    }
    
    func sliderZero(){
        greenSlider.value = 0;
        redSlider.value = 0;
        blueSlider.value = 0;
        alphaSlider.value = 0;

    }
    
    func saveColor(color:UIColor){
        colorSend = color
    }
    
    @IBAction func resetColor(_ sender: Any) {

        redSwitch.isOn = false;
        greenSwitch.isOn = false;
        blueSwitch.isOn = false;
        sliderZero()
        updateColor()
        disabledSlider()
    }
    

}

