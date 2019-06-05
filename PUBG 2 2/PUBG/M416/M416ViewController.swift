//
//  M416ViewController.swift
//  PUBG
//
//  Created by User on 28/5/19.
//  Copyright © 2019 Yichun. All rights reserved.
//

import UIKit

extension M416ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let weapon = weapons[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "M416DataCell") as! M416TableViewCell
        
        cell.setWeapon(weapon: weapon)
        
        return cell
    }
}

class M416ViewController: UIViewController {
    
    var weapons: [weaponsData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weapons = createArray()
        
        self.navigationItem.title = "M416 Data"
    }
    
    func createArray() -> [weaponsData] {
        
        var tempWeaponsData: [weaponsData] = []
        
        let Data1 = weaponsData(title: "Damage", data: 43)
        let Data2 = weaponsData(title: "Rate of Fire(s)", data: 0.086)
        let Data3 = weaponsData(title: "Bullet Speed(m/s)", data: 880)
        let Data4 = weaponsData(title: "Reload Duration(s)", data: 2.10)
        let Data5 = weaponsData(title: "Range(m)", data: 360)
        let Data6 = weaponsData(title: "Hit Impact", data: 3500)
        
        tempWeaponsData.append(Data1)
        tempWeaponsData.append(Data2)
        tempWeaponsData.append(Data3)
        tempWeaponsData.append(Data4)
        tempWeaponsData.append(Data5)
        tempWeaponsData.append(Data6)
        
        return tempWeaponsData
    }
    
}
