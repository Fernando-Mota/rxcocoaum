//
//  ViewController.swift
//  Controls
//
//  Created by Fernando Mota e Silva on 30/08/2018.
//  Copyright © 2018 HalphDem. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {
    
   
    @IBOutlet weak var search: UITextField!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var year: UILabel!
    
    let service = ApiService()
    
    let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let shared = search.rx.controlEvent(UIControlEvents.editingDidEndOnExit)
            .asObservable()
            .map {
                return self.search.text
            }
            .flatMap { title in
                return self.service.findByTitle(title: title ?? "Error")
                .catchErrorJustReturn(self.service.empty)
            }.asDriver(onErrorJustReturn: service.empty)
        
        shared.map { movie in
            return movie.title
            }.drive(movieTitle.rx.text)
        .disposed(by: bag)
        
        shared.map { movie in
            return movie.year
            }.drive(year.rx.text)
        .disposed(by: bag)
    }



}

