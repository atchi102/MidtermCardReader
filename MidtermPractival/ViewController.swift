//
//  ViewController.swift
//  MidtermPractival
//
//  Created by Abigail Atchison on 3/30/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var CardNum: UITextField!
    @IBOutlet weak var CardImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CardNum.textColor = UIColor.redColor()
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func NumChanged(sender: AnyObject) {
        if(CardNum.text?.characters.count >= 4)
        {
            if(CardNum.text?[0...1] == "34" || CardNum.text?[0...1] == "37")
            {
                CardImage.image = UIImage(named: "AmericanExpress.png")
                CardNum.textColor = UIColor.greenColor()
            }
            else if(CardNum.text?[0...3] == "6011")
            {
                CardImage.image = UIImage(named: "DiscoverCard.jpg")
                CardNum.textColor = UIColor.greenColor()
            }
            else if(CardNum.text?[0...1] == "51" || CardNum.text?[0...1] == "55")
            {
                CardImage.image = UIImage(named: "MasterCard.jpg")
                CardNum.textColor = UIColor.greenColor()
            }
            else if(CardNum.text?[0] == "4")
            {
                CardImage.image = UIImage(named: "VisaCard.png")
                CardNum.textColor = UIColor.greenColor()
            }
            else
            {
                CardNum.textColor = UIColor.redColor()
                CardImage.image = UIImage(named: "default.jpg")
            }
        }
        else if(CardNum.text?.characters.count > 1)
        {
            if(CardNum.text?[0...1] == "34" || CardNum.text?[0...1] == "37")
            {
                CardImage.image = UIImage(named: "AmericanExpress.png")
                CardNum.textColor = UIColor.greenColor()
            }
            else if(CardNum.text?[0...1] == "51" || CardNum.text?[0...1] == "55")
            {
                CardImage.image = UIImage(named: "MasterCard.jpg")
                CardNum.textColor = UIColor.greenColor()
            }
            else if(CardNum.text?[0] == "4")
            {
                CardImage.image = UIImage(named: "VisaCard.png")
                CardNum.textColor = UIColor.greenColor()
            }
            else
            {
                CardNum.textColor = UIColor.redColor()
                CardImage.image = UIImage(named: "default.jpg")
            }
        }
        else if(CardNum.text?.characters.count == 1)
        {
            if(CardNum.text?[0] == "4")
            {
                CardImage.image = UIImage(named: "VisaCard.png")
                CardNum.textColor = UIColor.greenColor()
            }
            else
            {
                CardNum.textColor = UIColor.redColor()
                CardImage.image = UIImage(named: "default.jpg")
            }
            
        }
        else
        {
            CardNum.textColor = UIColor.redColor()
            CardImage.image = UIImage(named: "default.jpg")
        }
    }
    
}

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start ..< end)]
    }
}

