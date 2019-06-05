//
//  AKMViewController.swift
//  PUBG
//
//  Created by User on 26/5/19.
//  Copyright © 2019 Yichun. All rights reserved.
//

import UIKit


extension AKMViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let weapon = weapons[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AKMDataCell") as! AKMTableViewCell
        
        cell.setWeapon(weapon: weapon)
        
        return cell
    }
}

class AKMViewController: UIViewController {
    
    var weapons: [weaponsData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        weapons = createArray()

        self.navigationItem.title = "AKM Data"
    }
    
    func createArray() -> [weaponsData] {
        
        var tempWeaponsData: [weaponsData] = []
        
        let Data1 = weaponsData(title: "Damage", data: 49)
        let Data2 = weaponsData(title: "Rate of Fire(s)", data: 0.100)
        let Data3 = weaponsData(title: "Bullet Speed(m/s)", data: 715)
        let Data4 = weaponsData(title: "Reload Duration", data: 2.90)
        let Data5 = weaponsData(title: "Range(m)", data: 380)
        let Data6 = weaponsData(title: "Hit Impact", data: 10000)
        
        tempWeaponsData.append(Data1)
        tempWeaponsData.append(Data2)
        tempWeaponsData.append(Data3)
        tempWeaponsData.append(Data4)
        tempWeaponsData.append(Data5)
        tempWeaponsData.append(Data6)

        
        return tempWeaponsData
    }

}
