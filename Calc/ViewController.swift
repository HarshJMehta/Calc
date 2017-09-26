//
//  ViewController.swift
//  Calc
//Name:Harsh Mehta
//ID:300951815
//Last Modified: 26 Sept 17
//Program Description:It is a basic calculat app which performs basic arithmetic functions.
//  Created by Student on 2017-09-20.
//  Copyright © 2017 CENTE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberTobedisplayed:Double = 0;
     var storenumber:Double = 0;
    var operations = false;/* Variable to be perform all the basic arithmetic opeerations*/
    var operationsToBePerformed = 0;

    @IBOutlet weak var label: UILabel!
    
    @IBAction func Button(_ sender: UIButton) /*Function that does the processing of all the numbers*/
    {
        if operations == true
        {
            label.text = String(sender.tag-1)
            numberTobedisplayed = Double(label.text!)!
            operations = false
            
        }
        else
            
        {
        label.text=label.text! + String(sender.tag-1)
        numberTobedisplayed = Double(label.text!)!
        }
    }
    
    @IBAction func Function(_ sender: UIButton) /* Function for basic operations*/
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
          storenumber = Double(label.text!)!
                if sender.tag == 12 /*For divide */
                 {
                    label.text = "/"
                 }
                 else if sender.tag == 13 /*For multiplication */
                 {
                label.text = "X"
                 }
                else if sender.tag == 14 /*For subtraction */
                 {
                label.text = "-"
                 }
                else if sender.tag == 15/*For addition */
                {
                    label.text = "+"
                }
                operationsToBePerformed = sender.tag
            operations=true;
        }
            else if sender.tag == 16
            {
                if operationsToBePerformed == 12
                {
                    label.text = String(storenumber / numberTobedisplayed)
                }
                if operationsToBePerformed == 13
                {
                     label.text = String(storenumber * numberTobedisplayed)
                }
                if operationsToBePerformed == 14
                {
                     label.text = String(storenumber - numberTobedisplayed)
                }
                if operationsToBePerformed == 15
                {
                     label.text = String(storenumber + numberTobedisplayed)
                }
                else if sender.tag == 11 /*For Clear*/
                {
                    label.text = ""
                    storenumber = 0;
                    numberTobedisplayed = 0;
                    operationsToBePerformed = 0;
                }
            }
        
        }
     
    
}







    




