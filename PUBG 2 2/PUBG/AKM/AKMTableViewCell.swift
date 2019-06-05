//
//  AKMTableViewCell.swift
//  PUBG
//
//  Created by User on 28/5/19.
//  Copyright © 2019 Yichun. All rights reserved.
//

import UIKit

class AKMTableViewCell: UITableViewCell {
    
    @IBOutlet weak var WeaponTitle: UILabel!
    @IBOutlet weak var WeaponData: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    func setWeapon(weapon: weaponsData) {
        WeaponTitle.text = weapon.title
        WeaponData.text = String(weapon.data)
    }
    
}
