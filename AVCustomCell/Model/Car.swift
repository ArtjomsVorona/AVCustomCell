//
//  Car.swift
//  AVCustomCell
//
//  Created by Artjoms Vorona on 13/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import Foundation

struct Car {
    var maker: String
    var model: String
    var type: String
    
    static func createCarList() -> [Car] {
        var cars: [Car] = []
        
        let makers = DataManager.shared.makersList
        let models = DataManager.shared.modelList
        let types = DataManager.shared.typeList
        
        for i in 0..<makers.count {
            let car = Car(maker: makers[i], model: models[i], type: types[i])
            cars.append(car)
        }
        return cars
    }
    
}
