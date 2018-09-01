//
//  MovieEntityAPI.swift
//  Controls
//
//  Created by Fernando Mota e Silva on 30/08/2018.
//  Copyright © 2018 HalphDem. All rights reserved.
//

import Foundation

class MovieEntity {
    
    let title: String
    
    let year: String
    
    let registerDate: String
    
    init (title: String, year: String, registerDate: String) {
        self.title = title
        self.year = year
        self.registerDate = registerDate
    }
}
