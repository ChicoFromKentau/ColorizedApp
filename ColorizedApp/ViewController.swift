//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Chingiz Alimov on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorizedView.layer.cornerRadius = 22
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
        sliderValueChanged(redColorSlider)
        sliderValueChanged(greenColorSlider)
        sliderValueChanged(blueColorSlider)
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        redColorValue.text = String(format: "%.2f",redColorSlider.value)
        greenColorValue.text = String(format: "%.2f",greenColorSlider.value)
        blueColorValue.text = String(format: "%.2f",blueColorSlider.value)
        
        let red = redColorSlider.value
        let green = greenColorSlider.value
        let blue = blueColorSlider.value
        
        setBackgroundColor(red: red, green: green, blue: blue)
    }
 
    private func setBackgroundColor(red: Float, green: Float, blue: Float) {
        let color = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
        colorizedView.backgroundColor = color
    }
    private func setupRedSlider () {
        redColorSlider.value = 0.25
        redColorSlider.minimumTrackTintColor = .red
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
    }
    private func setupGreenSlider () {
        greenColorSlider.value = 0.5
        greenColorSlider.minimumTrackTintColor = .green
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
    }
    private func setupBlueSlider () {
        blueColorSlider.value = 0.75
        blueColorSlider.minimumTrackTintColor = .blue
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
    }
}
