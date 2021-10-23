//
//  ViewController.swift
//  Bril_R_G.HW_2.2 switch color
//
//  Created by Bril Roman on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
    // view
    @IBOutlet var colorViewImage: UIImageView!
    
    // text
    @IBOutlet var redTextValue: UILabel!
    @IBOutlet var greenTextValue: UILabel!
    @IBOutlet var blueTextValue: UILabel!
    
    // sliders
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorViewImage.layer.cornerRadius = 17

        changeColor()
        textVolueChange()
        
    }
    
    // функция изменения цвета по заданному значению
    private func changeColor() {
        colorViewImage.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1))
    }
    
    //функция округления остатка
    private func roundValue (from slider: UISlider) -> String {
        return String(round(slider.value * 100) / 100)
    }
   
    // функция изменения текстового значения цвета
    private func textVolueChange() {
        redTextValue.text = roundValue(from: redSlider)
        greenTextValue.text = roundValue(from: greenSlider)
        blueTextValue.text = roundValue(from: blueSlider)
    }
    
    //метод вызова функций через слайдер
    @IBAction func rgbSliderControl(_ sender: Any) {
        changeColor();
        textVolueChange()
    }
    
    
}


