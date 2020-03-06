//
//  DataStorage.swift
//  TableView
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class DataStorage
{
    private  static let instance =  DataStorage()
    private lazy var countryList: [Country] = []
    private init(){}
    
    static func getInstance() -> DataStorage
    {
        return instance
    }
    func addCountry(country : Country)
    {
        self.countryList.append(country)
    }
    func  getAllCountries() -> [Country]
    {
        return self.countryList
    }
    func loadData()
    {
        //countryList.removeAll()
        countryList.append(Country(name  : "India" , capital : " Delhi", flag : #imageLiteral(resourceName: "India")))
        countryList.append(Country(name  : "China" , capital : " Beijng", flag : #imageLiteral(resourceName: "China")))
        countryList.append(Country(name  : "Canada" , capital: " Toronto", flag : #imageLiteral(resourceName: "Canada")))
        countryList.append(Country(name  : "UK" , capital : " London", flag : #imageLiteral(resourceName: "UK")))
        countryList.append(Country(name  : "Egypt" , capital : " Cairo", flag : #imageLiteral(resourceName: "Egypt")))
        countryList.append(Country(name  : "Russia" , capital : " Moscow", flag : #imageLiteral(resourceName: "Russia")))}
}

