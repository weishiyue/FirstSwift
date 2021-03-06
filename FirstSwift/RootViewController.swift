//
//  RootViewController.swift
//  FirstSwift
//
//  Created by syweic on 14-6-17.
//  Copyright (c) 2014 ___iSoftStone___. All rights reserved.
//

import UIKit

let kStateHeight = 20.0
let kSpace = 10.0
let kContorlHeight = 40.0
let kContorlWidth = 300.0

protocol myProtocol {
    var simpliDescription: String { get }
    mutating func adjust()
    
}

class RootViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blueColor();
        
        // Do any additional setup after loading the view.
        
        var lable:UILabel = UILabel (frame: CGRectMake(kSpace, kStateHeight+kSpace, kContorlWidth, kContorlHeight))
        lable.text = "hello swift"
        lable.textColor = UIColor.whiteColor()
        lable.layer.borderColor = UIColor.whiteColor().CGColor
        lable.layer.borderWidth = 1.0
        lable.layer.cornerRadius = 5.0
        lable.textAlignment = NSTextAlignment.Center
        lable.font = UIFont.boldSystemFontOfSize(20)
        lable.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(lable)
        
        var button = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        button!.frame = CGRectMake(10, kStateHeight+(kSpace+kContorlHeight)*1+kSpace, kContorlWidth, kContorlHeight)
        
        
        
        /**********************************************/
        enum ServerResponse{
            case Result(String, String)
            case Error(String)
        }
        let success = ServerResponse.Result("6:00 am", "8:00 pm")
        let failure = ServerResponse.Error("Out of cheese")
        
        switch success{
        case let .Result(sunrise, sunset):
            println("success")
        case let .Error(error):
            println("error")
            
        }
        /**********************************************/
        
//        class myOneClass: myProtocol{
//            var simpleDescription: String = "one protocol"
//            var oneProperty: Int = 1000
//            func adjust(){
//                simpleDescription += "now is\(oneProperty)"
//                
//            }
//            
//            
//        }
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // #pragma mark - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
