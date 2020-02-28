//
//  ViewController.swift
//  My first Project
//
//  Created by student on 2/20/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultScreen: UILabel!
    
    @IBOutlet weak var dotbtn: UIButton!
    
    var pn:Double=0
    var ns:Double=0
    var op:Double=0
    var eq=false
    var snop:Double=0
    
    var result:NSNumber=0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultScreen.text=""
        
        // Do any additional setup after loading the view.
    }


    
    @IBAction func Buttons(_ sender: UIButton) {
        
        if ( resultScreen.text == "+" || resultScreen.text == "-" || resultScreen.text == "*" || resultScreen.text == "/" || resultScreen.text == "%" ||  resultScreen.text == "00" || eq==true
            ) { resultScreen.text = ""
            resultScreen.text=resultScreen.text!+String(sender.currentTitle!)
                eq=false
            
                }
            else{            resultScreen.text=resultScreen.text!+String(sender.currentTitle!)
            }
             ns=Double(resultScreen.text!)!
            
        }
    

    
    @IBAction func dotbtnclc(_ sender: UIButton) {
        dotbtn.isEnabled=false
    }
    
    
    
    
    @IBAction func Clear(_ sender: UIButton) {
        resultScreen.text=""
        pn=0
        ns=0
        op=0
        snop=0
        eq=false
        dotbtn.isEnabled=true
    }
    
        
    @IBAction func Operat(_ sender: UIButton) {
        dotbtn.isEnabled=true
        
        if (resultScreen.text=="+" || resultScreen.text=="-" || resultScreen.text=="*" || resultScreen.text=="/"){
          resultScreen.text=String(sender.currentTitle!)
            op=Double(sender.tag)
        }
        else {
        pn=Double(resultScreen.text!)!
        resultScreen.text=String(sender.currentTitle!)
            op=Double(sender.tag)              }
        
    }
    
    
    @IBAction func KVT(_ sender: UIButton) {
        pn=Double(resultScreen.text!)!
        result=NSNumber(value: pn*pn)
        resultScreen.text=result.stringValue
    }
    
        
    @IBAction func equlas(_ sender: UIButton) {
       
        
        if (op==10){
            result=NSNumber(value: pn+ns)
        }else if (op==11){
            result=NSNumber(value: (pn)-(ns))
        }else if (op==12){
            result=NSNumber(value: (pn)*(ns))
        }else if (op==13){
            result=NSNumber(value: (pn)/(ns))
            }else if (op==17){
            result=NSNumber(value: (pn)*(ns)/100)
        }
        
        
        
        
        if(ns==0 && (op == 13)){
            resultScreen.text="error"
            eq=true
        }else{
        eq=true
            resultScreen.text=result.stringValue
        }
    }
      
    
}
    
    


