//
//  ListController.swift
//  One Step
//
//  Created by Chikao Maeda on 6/26/18.
//  Copyright © 2018 Chikao Maeda. All rights reserved.
//

import UIKit

class ListController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(ViewController.tableViewData)
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
            cell.textLabel?.text = String(ViewController.tableViewData[indexPath.section].priority) + "    " + ViewController.tableViewData[indexPath.section].title
            cell.backgroundColor = ViewController.tableViewData[indexPath.section].color
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



