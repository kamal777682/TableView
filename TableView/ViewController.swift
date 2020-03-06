//
//  ViewController.swift
//  TableView
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var tblCountry: UITableView!
    lazy var countryName : [Country] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        countryName = DataStorage.getInstance().getAllCountries()
        // Do any additional setup after loading the view.
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        let country = countryName[indexPath.row]
        
        cell?.textLabel?.text = country.name
        cell?.detailTextLabel?.text = country.capital
        cell?.imageView?.image = country.flag
            
        return cell!
    }
    
    // to set height of the row
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
    
    // to set header and footer of tables
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Country Name"
    }
    
    // to display selected row
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let c = countryName[indexPath.row]
        print(c.name)
    }
       
        //= ["India","China","USA","Japan","Sri Lanka","Pakistan","Afghanistan","Denmark","Bahamas","Nepal","German","Asia","Africa","Malaysia","France","Bermudes","Mexio","UK","Phillipines","Arabia"]

}

