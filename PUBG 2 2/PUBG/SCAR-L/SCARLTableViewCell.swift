//
//  SCAR-LTableViewCell.swift
//  PUBG
//
//  Created by User on 29/5/19.
//  Copyright © 2019 Yichun. All rights reserved.
//

import UIKit

class SCAR_LTableViewCell: UITableViewCell {

    @IBOutlet weak var weaponTitle: UILabel!
    @IBOutlet weak var weaponData: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    func setWeapon(weapon: weaponsData) {
        weaponTitle.text = weapon.title
        weaponData.text = String(weapon.data)
    }
    
    func setProgressView(progressView: ProgressView) {
    }
    
}
