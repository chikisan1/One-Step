//
//  ListController.swift
//  One Step
//
//  Created by Chikao Maeda on 6/26/18.
//  Copyright © 2018 Chikao Maeda. All rights reserved.
//

import UIKit

//struct cellData{
//    var opened = Bool()
//    var title = String()
//    var sectionData = [String]()
//}

class ListController: UITableViewController {
//    var toDoList: [String]?
//    var tableViewData = [cellData]()
//    static var tableViewData = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableViewData = [cellData(opened: false, title: "1", sectionData: ["cell1", "cell2", "cell3"]),
//                         cellData(opened: false, title: "1", sectionData: ["cell1", "cell2", "cell3"]),
//                         cellData(opened: false, title: "1", sectionData: ["cell1", "cell2", "cell3"]),
//                         cellData(opened: false, title: "1", sectionData: ["cell1", "cell2", "cell3"])]
//        ListController.tableViewData.append(Card(title: "3", date: Date(), priority: 3))
//        ListController.tableViewData.append(Card(title: "1", date: Date(), priority: 1))
//        ListController.tableViewData.append(Card(title: "2", date: Date(), priority: 2))
//        ListController.tableViewData.sort(by: { $0.priority < $1.priority })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return ViewController.tableViewData.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        if tableViewData[section].opened == true {
//            return tableViewData[section].sectionData.count + 1
//        }
//        else{
//            return 1
//        }
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let dataIndex = indexPath.row - 1
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
            cell.textLabel?.text = ViewController.tableViewData[indexPath.section].title
            return cell
        }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
//            cell.textLabel?.text = tableViewData[indexPath.section].sectionData[dataIndex]
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.row == 0{
//            if tableViewData[indexPath.section].opened == true{
//                tableViewData[indexPath.section].opened = false
//                let sections = IndexSet.init(integer: indexPath.section)
//                tableView.reloadSections(sections, with: .none)
//            }else{
//                tableViewData[indexPath.section].opened = true
//                let sections = IndexSet.init(integer: indexPath.section)
//                tableView.reloadSections(sections, with: .none)
//            }
//        }
    }
}



