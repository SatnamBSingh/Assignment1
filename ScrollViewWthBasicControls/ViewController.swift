//
//  ViewController.swift
//  ScrollViewWthBasicControls
//
//  Created by Vaibhav Wadhwa on 15/11/19.
//  Copyright © 2019 Vaibhav Wadhwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var VIew: UIView!
    @IBOutlet weak var Switch1: UISwitch!
    @IBOutlet weak var SegmentControl1: UISegmentedControl!
    
    @IBOutlet weak var TextField: UITextField!
    @IBAction func Button(_ sender: UIButton) {
      //  Label.text = TextField.text
        
        let currLabelText = Label.text;
        
        if(currLabelText == "You just click the button.")
        {
            Label.text = "clicked the button again.";
        }
        else
        {
            Label.text = "You just click the button.";
        }
    }
    @IBOutlet weak var Label: UILabel!
    @IBAction func Slider(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        
        Label.text = "\(currentValue)"
    }
    
    
    @IBAction func Switch(_ sender: UISwitch) {
        if Switch1.isOn {
            Label.text = "The Switch is Off"
            Switch1.setOn(false, animated:true)
        }
        else {
            Label.text = "The Switch is On"
            Switch1.setOn(true, animated:true)
        }
        
    }
    
    
    @IBAction func indexChanged(_ sender: Any) {
        switch SegmentControl1.selectedSegmentIndex
        {
        case 0:
            Label.text = "First Segment Selected"
        case 1:
            Label.text = "Second Segment Selected"
        default:
            break
    }
    
    }
    
    
   // yourview.backgroundColor = UIColor.colorWithPatternImage(UIImage(named:imageName))
    
    @IBOutlet weak var ImageView: UIImageView!
   
    override func viewDidLoad() {
      
    ScrollView.contentSize = CGSize(width: self.view.frame.width, height:
        self.view.frame.height+100)
       // yourTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardViewEndFrame.height - view.safeAreaInsets.bottom, right: 0)

        /* ScrollView = UIScrollView(frame: view.bounds)
        ScrollVIEW.backgroundColor = UIColor.black;
        ScrollVIEW.contentSize = VIew.bounds.size
        ScrollVIEW.autoresizingMask = UIView.AutoresizingMask(rawValue:UIView.AutoresizingMask.flexibleWidth.rawValue | UIView.AutoresizingMask.flexibleHeight.rawValue)
        
        ScrollVIEW.addSubview(VIew)
        view.addSubview(ScrollVIEW)
        
       // ScrollView.autoresizingMask = UIView.AutoresizingMask.flexibleWidth*/
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

