//
//  ListTableViewCell.swift
//  WeatherYandex
//
//  Created by Зоригто Бадмаин on 22.10.2020.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameCityLabel: UILabel!
    @IBOutlet weak var conditionCityLabel: UILabel!
    @IBOutlet weak var temCityLabel: UILabel!
    
    func configure(weather: Weather) {
        nameCityLabel.text = weather.name
        conditionCityLabel.text = weather.conditionString
        temCityLabel.text = weather.temperatureString
    }
}
