//
//  ProgressView.swift
//  PUBG
//
//  Created by User on 28/5/19.
//  Copyright © 2019 Yichun. All rights reserved.
//

import UIKit

class ProgressView: UIViewController {
    
    var progressView: UIProgressView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let progressView = UIProgressView(progressViewStyle:UIProgressView.Style.default)
        progressView.center = self.view.center
        progressView.progress = 0.0
        self.view.addSubview(progressView)
        
        progressView.setProgress(0.8, animated: true)
        
        progressView.progressTintColor = UIColor.green
        progressView.trackTintColor = UIColor.blue
        
        progressView.layer.position = CGPoint(x: self.view.frame.width/2, y: 100)
        
        progressView.progress = 0.5
        
        self.view.addSubview(progressView)
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
