//
//  LeftMenuVC.swift
//  Cloud
//
//  Created by nhatlee on 4/15/17.
//  Copyright © 2017 nhatlee. All rights reserved.
//

import UIKit
struct MenuObject{
    var icon: String?
    var name: String
}
final class LeftMenuVC: UIViewController {

    @IBOutlet weak var tbvMenuList: UITableView!
    fileprivate var listMenuItems = [MenuObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataList()
        // Do any additional setup after loading the view.
    }

    func getDataList(){
        let sourcePath = Constants.Plist.kListLeftMenu
        let path = Bundle.main.path(forResource: sourcePath, ofType: "plist")
        if let list = NSArray(contentsOfFile: path!) as? [[String : String]]{
            for obj in list{
                let menuObj = MenuObject(icon: obj["icon"], name: obj["name"]!)
                listMenuItems.append(menuObj)
            }
            self.tbvMenuList.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension LeftMenuVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listMenuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeftMenuCell", for: indexPath) as! LeftMenuCell
        let obj = listMenuItems[indexPath.row]
        cell.loadData(obj)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO
    }
}
