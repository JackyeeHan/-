//
//  ViewController.swift
//  讓方塊轉
//
//  Created by 黃柏瀚 on 2022/3/9.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0.0
    var timer:Timer!
 
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var uiView1: UIView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiView1.transform = CGAffineTransform(rotationAngle: 0)
        
        uiView1.layer.cornerRadius = 15
                
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
            self.rorate(theview:self.uiView1)
        })
        
        self.view.addSubview(uiView1)
}

    func rorate(theview:UIView){
        let angle = counter * Double.pi / 180
        theview.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        
        if segment.selectedSegmentIndex == 0{
            counter += Double(slider.value)
            
        }else{
            counter -= Double(slider.value)
        }
        
    }
    
    
}

