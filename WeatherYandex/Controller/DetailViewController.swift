//
//  DetailViewController.swift
//  WeatherYandex
//
//  Created by Зоригто Бадмаин on 22.10.2020.
//

import UIKit
import SwiftSVG

class DetailViewController: UIViewController {

    @IBOutlet weak var nameCityLabel: UILabel!
    @IBOutlet weak var viewCity: UIView!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    
    var weatherModel: Weather?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        refreshLabel()
    }
    
    func refreshLabel() {
        nameCityLabel.text = weatherModel?.name
        
        guard let url = URL(string: "https://yastatic.net/weather/i/icons/blueye/color/svg/\(weatherModel!.conditionCode).svg") else { return }
        
        let weatherImage = UIView(SVGURL: url) {(image) in
            image.resizeToFit(self.viewCity.bounds)
        }
        
        self.viewCity.addSubview(weatherImage)
        
        conditionLabel.text = weatherModel?.conditionString
        tempLabel.text = weatherModel?.temperatureString
        pressureLabel.text = "\((weatherModel?.pressureMm)!)"
        windSpeedLabel.text = "\((weatherModel?.windSpeed)!)"
        minTempLabel.text = "\((weatherModel?.tempMin)!)"
        maxTempLabel.text = "\((weatherModel?.tempMax)!)"
    }
}
