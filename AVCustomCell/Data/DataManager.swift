//
//  DataManager.swift
//  AVCustomCell
//
//  Created by Artjoms Vorona on 13/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var makersList = [
        "Mercedes Benz",
        "Audi",
        "BMW",
        "Lexus"
    ]
    
    var modelList = [
        "E500",
        "Q8",
        "A7",
        "ES350"
    ]
    
    var typeList = [
        "Sedan",
        "SUV",
        "Sports-coupe",
        "Sedan"
    ]
}
