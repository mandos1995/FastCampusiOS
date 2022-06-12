//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 김민석 on 2022/06/13.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func changeButtonTapped(_ sender: UIButton) {
        cityLabel.text = cities.randomElement()!
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
    }
    
}

