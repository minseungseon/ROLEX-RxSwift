//
//  SearchViewModel.swift
//  rxSwiftTest
//
//  Created by 김민희 on 2021/02/03.
//

import Foundation
import RxCocoa
import RxSwift

class SearchViewModel {
    
    let searchText = BehaviorRelay(value: "")

    lazy var data: Driver<[CategoryList]> = {
        return Observable.of([CategoryList]()).asDriver(onErrorJustReturn: [])
        }()
}

class CategoryList {
    let name: String
    init(name: String) {
        self.name = name
    }
}
