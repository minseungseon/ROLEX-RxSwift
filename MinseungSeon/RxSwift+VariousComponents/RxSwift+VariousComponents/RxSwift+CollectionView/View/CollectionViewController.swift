//
//  CollectionViewController.swift
//  RxSwift+VariousComponents
//
//  Created by 선민승 on 2021/02/03.
//

import UIKit
import RxSwift
import RxCocoa

class CollectionViewController: UIViewController {
    
    let bag = DisposeBag()
    
//    enum MyModel {
//        case dates(String)
//        case days(String)
//    }
    
    @IBOutlet var headerView: UIView!
    @IBOutlet var headerLabel: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.backgroundColor = .gray
        headerLabel.text = "1월 10일, 월요일"
        bindCollectionView()
    }
    
    private func bindCollectionView() {
        
        //            let cities = ["London", "Vienna", "Lisbon"]
        //
        //            let citiesOb: Observable<[String]> = Observable.of(cities)
        //
        //        citiesOb.bind(to: collectionView.rx.item) { (tableView: UITableView, index: Int, element: String) -> UITableViewCell in
        //
        //                guard let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell") else { return UITableViewCell() }
        //
        //                cell.textLabel?.text = element
        //
        //                return cell
        //
        //            }.disposed(by: bag)
        //
        let dates = Observable.of(["1", "2", "3", "4", "5", "6", "7"])

//        let dates = ["1", "2", "3", "4", "5", "6", "7"]
//        let days = ["월", "화", "수", "목", "금", "토", "일"]
//        dates.bind(to: collectionView.rx.items(cellIdentifier: <#T##String#>, cellType: <#T##Cell.Type#>)) {
//            
//        }
        
        
        
        
        
        
        
        //        menus.bind(to: maincollectionView.rx.items(cellIdentifier: BottomMenuCell.ID, cellType: BottomMenuCell.self)) {
        //                    (row, element, cell) in
        //                    cell.bottomImageView?.sd_setImage(with: URL(string: element.path), completed: nil)
        //                }.disposed(by: disposeBag)
        //
        //                maincollectionView.rx
        //                    .modelSelected(BotMenu.self)
        //                    .subscribe({ (item) in
        //                        print(item.element?.path ?? "")
        //                        let pushVC = PushViewController()
        //                        self.present(pushVC, animated: true, completion: nil)
        //                    }).disposed(by: disposeBag)
        //
        
    }
    
}
