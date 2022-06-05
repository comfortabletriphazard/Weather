//
//  DataModel.swift
//  Weather
//
//  Created by Michael McAlarney on 05/06/2022.
//

import UIKit

struct WeatherData: Hashable {
    var id: Int
    var day: String
    var high: Int
    var low: Int
    var icon: String
    
}

class DataModel: NSObject {
    static let data: [WeatherData] = [
        WeatherData(id: 1, day: "Monday", high: 34, low: 15, icon: "sun.max.fill"),
        WeatherData(id: 2, day: "Tuesday", high: 30, low: 16, icon: "sun.max.fill"),
        WeatherData(id: 3, day: "Wednesday", high: 29, low: 15, icon: "cloud.drizzle.fill"),
        WeatherData(id: 4, day: "Thursday", high: 35, low: 21, icon: "cloud.fog.fill"),
        WeatherData(id: 5, day: "Friday", high: 10, low: 1, icon: "sun.max.fill"),
        WeatherData(id: 6, day: "Saturday", high: 7, low: 2, icon: "sun.max.fill"),
        WeatherData(id: 7, day: "Sunday", high: 56, low: 8, icon: "sun.max.fill")
    ]

}
