//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Chingiz Alimov on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
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
    
        redColorValue.text = String(format: "%.2f",redColorSlider.value)
        greenColorValue.text = String(format: "%.2f",greenColorSlider.value)
        blueColorValue.text = String(format: "%.2f",blueColorSlider.value)
        
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1)
    }
 
    
    private func setupRedSlider () {
        redColorSlider.value = 0
        redColorSlider.minimumTrackTintColor = .red
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
    }
    private func setupGreenSlider () {
        greenColorSlider.value = 0
        greenColorSlider.minimumTrackTintColor = .green
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
    }
    private func setupBlueSlider () {
        blueColorSlider.value = 0
        blueColorSlider.minimumTrackTintColor = .blue
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
    }
    
}
