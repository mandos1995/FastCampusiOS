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
    var prevCityText = ""
    var prevWeatherImageName = ""
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeButtonTapped(_ sender: UIButton) {
        // MARK: 동일한 요소가 연속으로 나오는 경우 다시 뽑음
        var cityText = cities.randomElement()!
        var imageName = weathers.randomElement()!
        while prevCityText == cityText {
            cityText = cities.randomElement()!
        }
        while imageName == prevWeatherImageName {
            imageName = weathers.randomElement()!
        }
        
        cityLabel.text = cityText
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
        
        prevCityText = cityText
        prevWeatherImageName = imageName
    }
    
}

