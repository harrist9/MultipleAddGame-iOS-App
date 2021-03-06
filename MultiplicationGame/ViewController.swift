//
//  ViewController.swift
//  MultiplicationGame
//
//  Created by Thomas on 10/28/15.
//  Copyright © 2015 Thomas. All rights reserved.
//

import UIKit
import AdSupport
import iAd



class ViewController: UIViewController, ADBannerViewDelegate {
//Properties
    var multiple: Int = 0
    var addidive: Int = 0
    var sum: Int = 0
    var timer: Int = 0
    
    
 //Outlets
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var whatToAddBy: UITextField!
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var addBtn: UIButton!
 
    @IBOutlet weak var timerLbl: UILabel!
//Actions
    
   
    
    @IBAction func playBtnPressed(sender: AnyObject) {
        
        if whatToAddBy.text != nil && whatToAddBy.text != "" {
        
        playBtn.hidden = true
        whatToAddBy.hidden = true
        logo.hidden = true
            
        addLabel.hidden = false
        addBtn.hidden = false
        timerLbl.hidden = false
            
        multiple = Int(whatToAddBy.text!)!
        self.view.endEditing(true)
            
        }
        
    }
    
    
    @IBAction func add(sender: AnyObject) {
        
        sum = addidive + multiple
        updateLable()
        addidive = sum
        timerAdd()
        if sum >= 2000 {
           
            restartGame()
        }
    }
    

//Functions
    
    func timerAdd(){
        timerLbl.text = "Time \(timer)"
        timer++
    }
    
    func updateLable(){
        addLabel.text = "\(addidive) + \(multiple) = \(sum)"
    
    }
    
    func restartGame(){
        
        playBtn.hidden = false
        whatToAddBy.hidden = false
        logo.hidden = false
        
        addLabel.hidden = true
        addBtn.hidden = true
        whatToAddBy.text = ""
        timerLbl.hidden = true
        timer = 0

    }
    
}

