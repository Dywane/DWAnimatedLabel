//
//  ViewController.swift
//  DWAnimatedLabelDemo
//
//  Created by dywanedu on 2018/7/23.
//  Copyright © 2018年 dywanedu. All rights reserved.
//

import UIKit
import DWAnimatedLabel
import DWLabel

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //        let label = DWAnimatedLabel(frame: CGRect(x: 20, y: 44, width: 300, height: 50))
        //        label.text = "Hey, I have something to say..."
        //        label.sizeToFit()
        //        label.animationType = .typewriter
        //        view.addSubview(label)
        //
        //        let label2 = DWAnimatedLabel(frame: CGRect(x: 20, y: 94, width: 300, height: 50))
        //        label2.text = "It's 3 a.m. in the morning"
        //        label2.sizeToFit()
        //        label2.animationType = .typewriter
        //        view.addSubview(label2)
        //        label.startAnimation(duration: 2.0) {
        //            label2.startAnimation(duration: 2.0, nil)
        //        }
        
        //        let label = DWAnimatedLabel(frame: CGRect(x: 0, y: 44, width: UIScreen.main.bounds.size.width, height: 100))
        //        label.text = "\"Stay hungry, stay foolish\" -- Steve Jobs"
        //        label.numberOfLines = 0
        //        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        //        label.backgroundColor = .black
        //        label.textColor = .white
        //        label.animationType = .shine
        //        view.backgroundColor = .black
        //        view.addSubview(label)
        //        label.startAnimation(duration: 4.0, nil)
        
        //        let label = DWAnimatedLabel(frame: CGRect(x: 20, y: 44, width: UIScreen.main.bounds.size.width, height: 100))
        //        label.text = "This is a fading text"
        //        label.numberOfLines = 0
        //        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        //        label.animationType = .fade
        //        view.addSubview(label)
        //        label.startAnimation(duration: 2.0, nil)
        let label = DWAnimatedLabel(frame: CGRect(x: 20, y: 44, width: UIScreen.main.bounds.size.width, height: 100))
        label.text = "LOADING"
        label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        label.animationType = .wave
        label.placeHolderColor = .gray
        label.backgroundColor = .black
        label.textColor = . white
        
        view.addSubview(label)
        view.backgroundColor = .black
        label.startAnimation(duration: 8.0, nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

