//
//  DB.swift
//  Controls
//
//  Created by Fernando Mota e Silva on 30/08/2018.
//  Copyright © 2018 HalphDem. All rights reserved.
//

import Foundation


class DB {
    
    let moviesApi: [MovieEntity] = [
        MovieEntity(title: "Sharknado", year: "2014", registerDate: "2003-01-01"),
        MovieEntity(title: "Matrix", year: "1999", registerDate: "2000-01-01"),
        MovieEntity(title: "Her", year: "2015", registerDate: "2016-07-08")
    ]
    
    func findByTitle(title: String) -> MovieEntity? {
        for current in moviesApi {
            if current.title == title {
                return current
            }
        }
        return nil
    }
}
