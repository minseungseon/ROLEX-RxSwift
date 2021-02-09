//
//  CategoryVC.swift
//  rxSwiftTest
//
//  Created by 김민희 on 2021/02/03.
//

import UIKit
import RxCocoa
import RxSwift

class CategoryVC: UIViewController {

    var lists = [String]()
    let disposeBag = DisposeBag()
    let viewModels = SearchViewModel()
    
        
    // MARK: IBOutlet
    
    @IBOutlet weak var listSearchBar: UISearchBar!
    @IBOutlet weak var searchTableView: UITableView!
    
    // MARK: Life Cycle Part
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchTableView.dataSource = self
        inputSearchData()
    }
    

}

extension CategoryVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell: SearchTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as? SearchTableViewCell else {fatalError()}

        cell.listNameLabel.text = self.lists[indexPath.row]
        
        return cell
    }
    
    
}

extension CategoryVC {
    private func inputSearchData(){
        self.listSearchBar.rx.text
            .orEmpty // 옵셔널이 아니게 만들기
            .debounce(RxTimeInterval.microseconds(5), scheduler: MainScheduler.instance) // 0.5초 기다리기
    .distinctUntilChanged() // 새로운값이 이전에 나와있던 값과 같은지를 검사해줌(다르면 업데이트)
            .bind(to: viewModels.searchLists.filter(<#T##predicate: ([String]) throws -> Bool##([String]) throws -> Bool#>))
    .disposed(by: disposeBag) } }
