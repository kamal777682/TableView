//
//  MenuTableViewController.swift
//  TableView
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

//This is a static table example
class MenuTableViewController: UITableViewController {
    var countryName = ["Canada","USA"]
           var friendsName = ["Kamal","Nikita", "Jyoti"]
           var collegeName = ["Lambton College", "HUmber College", "Seneca College"]
           
           var sectionTitles = ["Countries","Friends","Education"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        // Do any additional setup after loading the view.
    }
    var data = [ 0 : ["Canada","USA"],
                 1 : ["Kamal","Nikita", "Jyoti"],
                 3 : ["Lambton College", "HUmber College", "Seneca College"]]
     
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
            return data.count
    }
       
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return data[section]!.count
    }
       
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return  "Total : \(data[section]!.count)"
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCellIdentifier", for: indexPath)
        let v  = data[indexPath.section]![indexPath.row]
        cell.textLabel?.text = v
        return cell
    }
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
