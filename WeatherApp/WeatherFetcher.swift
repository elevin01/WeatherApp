//
//  WeatherFetcher.swift
//  WeatherApp
//
//  Created by Emil Thomas Levin on 6/10/23.
//

import Foundation

class WeatherFetcher {
    func fetchWeatherData(completion: @escaping (Result<WeatherModel, Error>) -> Void) {
        // Simulated fetch with sample weather data because why not?
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let weatherData = WeatherModel(temperature: 24.0, description: "Sunny")
            completion(.success(weatherData))
        }
    }
}

