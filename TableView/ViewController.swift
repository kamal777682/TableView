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
        loadCounties()
        
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
    func loadCounties()
    {
        countryName.append(Country(name  : "India" , capital : " Delhi", flag : #imageLiteral(resourceName: "Image")))
            //= ["India","China","USA","Japan","Sri Lanka","Pakistan","Afghanistan","Denmark","Bahamas","Nepal","German","Asia","Africa","Malaysia","France","Bermudes","Mexio","UK","Phillipines","Arabia"]
        }
}

