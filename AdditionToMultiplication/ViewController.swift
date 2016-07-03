//
//  ViewController.swift
//  AdditionToMultiplication
//
//  Created by Shrijan Aryal on 7/3/16.
//  Copyright © 2016 Shrijan Aryal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variable declaration
    let timestomultiply: Int = 5
    var sumdisplay: String = ""
    var currentsum: Int = 0
    var counter: Int = 0
    var startingvalue: Int = 0

    @IBOutlet weak var applogo: UIImageView!
    @IBOutlet weak var numberinputfield: UITextField!
    @IBOutlet weak var playbutton: UIButton!
    
    @IBOutlet weak var updatinglabel: UILabel!
    @IBOutlet weak var addbutton: UIButton!
    
    @IBAction func onclickplaybutton(sender: UIButton){
        if (numberinputfield.text != nil && numberinputfield.text != ""){
            applogo.hidden = true
            numberinputfield.hidden = true
            playbutton.hidden = true
            updatinglabel.hidden = false
            addbutton.hidden = false
        }
    }
    
    @IBAction func onclickaddbutton(sender: UIButton){
        if (counter<timestomultiply){
             currentsum = startingvalue + Int(numberinputfield.text!)!
            updatinglabel.text = "\(startingvalue) + \(Int(numberinputfield.text!)!) = \(currentsum) "
            startingvalue = currentsum
            counter += 1
            }
        else if (counter == timestomultiply){
            apprestart()
        }
    }
    func apprestart(){
        applogo.hidden = false
        numberinputfield.hidden = false
        playbutton.hidden = false
        updatinglabel.hidden = true
        addbutton.hidden = true
        
        startingvalue = 0
        counter = 0
        currentsum = 0
        numberinputfield.text = ""
        updatinglabel.text = "Press Add to add"
        }
}



