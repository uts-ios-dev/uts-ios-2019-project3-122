//
//  SCAR-LViewController.swift
//  PUBG
//
//  Created by User on 29/5/19.
//  Copyright © 2019 Yichun. All rights reserved.
//

import UIKit

extension SCAR_LViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let weapon = weapons[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SCAR-LDataCell") as! SCAR_LTableViewCell
        
        cell.setWeapon(weapon: weapon)
        
        return cell
    }
}

class SCAR_LViewController: UIViewController {
    
    var weapons: [weaponsData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weapons = createArray()
        
        self.navigationItem.title = "SCAR-L Data"
    }
    
    func createArray() -> [weaponsData] {
        
        var tempWeaponsData: [weaponsData] = []
        
        let Data1 = weaponsData(title: "Damage", data: 70)
        let Data2 = weaponsData(title: "Critical", data: 100)
        let Data3 = weaponsData(title: "A", data: 11)
        let Data4 = weaponsData(title: "B", data: 22)
        let Data5 = weaponsData(title: "C", data: 33)
        let Data6 = weaponsData(title: "D", data: 44)
        
        tempWeaponsData.append(Data1)
        tempWeaponsData.append(Data2)
        tempWeaponsData.append(Data3)
        tempWeaponsData.append(Data4)
        tempWeaponsData.append(Data5)
        tempWeaponsData.append(Data6)
        
        
        return tempWeaponsData
    }
    
}
