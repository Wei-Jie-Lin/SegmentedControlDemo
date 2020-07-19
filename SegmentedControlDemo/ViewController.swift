//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Jay Lin on 2020/7/18.
//  Copyright © 2020 Jay Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControlGender: UISegmentedControl!
    @IBOutlet weak var segmentedControlColor: UISegmentedControl!
    
    @IBOutlet weak var labelGender: UILabel!
    @IBOutlet weak var viewGender: UIView!
    @IBOutlet weak var imageViewGender: UIImageView!
    
    
    //選擇性別時的動作。
    @IBAction func segmentControlGenderValueChange(_ sender: UISegmentedControl) {
        setGenderValue()
    }
    
    //選擇背景色時的動作。
    @IBAction func segmentControlColorValueChange(_ sender: UISegmentedControl) {
        setBackgroundColor()
    }
    
    
    
    
    //選擇性別時的動作。
    func setGenderValue() {
        let selectedGenderIndex = segmentedControlGender.selectedSegmentIndex
        switch selectedGenderIndex {
        case 0:
//            labelGender.text = "男生"
            labelGender.text = segmentedControlGender.titleForSegment(at: selectedGenderIndex)
            imageViewGender.image = UIImage(named: "男生")
            print(selectedGenderIndex)
        case 1:
//            labelGender.text = "女生"
            labelGender.text = segmentedControlGender.titleForSegment(at: selectedGenderIndex)
            imageViewGender.image = UIImage(named: "女生")
            print(selectedGenderIndex)
        default:
            break
        }
    }
    
    //選擇背景色時的動作。
    func setBackgroundColor() {
        let selectedBackgroundColorIndex = segmentedControlColor.selectedSegmentIndex
        
        switch selectedBackgroundColorIndex {
        case 0:
            viewGender.backgroundColor = UIColor.red
            labelGender.textColor = UIColor.red
            print(selectedBackgroundColorIndex)
        case 1:
            viewGender.backgroundColor = UIColor.blue
            labelGender.textColor = UIColor.blue
            print(selectedBackgroundColorIndex)
        case 2:
            viewGender.backgroundColor = UIColor.green
            labelGender.textColor = UIColor.green
            print(selectedBackgroundColorIndex)
        case 3:
            viewGender.backgroundColor = UIColor.yellow
            labelGender.textColor = UIColor.yellow
            print(selectedBackgroundColorIndex)
        default:
            break
        }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

