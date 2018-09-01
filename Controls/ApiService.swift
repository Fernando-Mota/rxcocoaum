//
//  ApiController.swift
//  Controls
//
//  Created by Fernando Mota e Silva on 30/08/2018.
//  Copyright © 2018 HalphDem. All rights reserved.
//

import Foundation
import RxSwift


class ApiService {
    
    let empty = Movie(title: "Unknown", year: "0000")
    
    let db = DB()
    
    func findByTitle(title: String) -> Observable<Movie> {
       let movieApi = db.findByTitle(title: title)
        guard let strongMovieApi = movieApi else {
            return Observable.just(empty)
        }
        return Observable.just(Movie(title: strongMovieApi.title, year: strongMovieApi.year))
    }
}
