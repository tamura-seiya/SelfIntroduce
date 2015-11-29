//
//  SecondViewController.swift
//  testweek2day3
//
//  Created by tamura seiya on 2015/10/14.
//  Copyright (c) 2015年 Seiya Tamura. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var text:String!
    @IBOutlet weak var txtOn: UILabel!
    //let image: UIImage(named:"IMG_8148.jpg")

    @IBOutlet weak var imgOn: UIImageView!
    //let image: UIImage(named:"IMG_8148.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        println("SVCで表示可能なメンバー　=\(text)")
        txtOn.text = text
        
        
        if(text == "I'm from...."){
            txtOn.text = "Saitama"
             imgOn.image = UIImage(named:"saitama.png")
            txtOn.textColor = UIColor.blackColor()
        }else if(text == "University..."){
            txtOn.text = "Waseda"
             imgOn.image = UIImage(named:"waseda2.jpg")
            txtOn.textColor = UIColor.redColor()
        }else if(text == "My skill!!!"){
            txtOn.text = "American football!National Champion!!"
            imgOn.image = UIImage(named:"amefoot2.jpg")
            txtOn.textColor = UIColor.darkGrayColor()
        }else if(text == "Enthuastic"){
            txtOn.text = "Swift"
            imgOn.image = UIImage(named:"swift1.jpg")
            txtOn.textColor = UIColor.darkTextColor()
        }else if(text == "Respect to him"){
            txtOn.text = "Steve Jobs"
            imgOn.image = UIImage(named:"stevejobs1.jpg")
        }else if(text == "The place I want to go"){
            txtOn.text = "Oslob"
            imgOn.image = UIImage(named:"oslob.jpg")
            txtOn.textColor = UIColor.blueColor()
        }else if(text == "My Family"){
         txtOn.text = "I love them!"
            imgOn.image = UIImage(named:"myfamily2.jpg")
            txtOn.textColor = UIColor.blackColor()
        }else if(text == "My Best Friends"){
            txtOn.text = "Called '付属会'!!"
            imgOn.image = UIImage(named:"huzokukai2.jpg")
            txtOn.textColor = UIColor.redColor()
        }else if(text == "Thank you"){
            txtOn.text = "Enjoying our Cebu's Life!!"
            imgOn.image = UIImage(named:"IMG_8922.jpg")
            txtOn.textColor = UIColor.yellowColor()
        }else{}





        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapBtn(sender: AnyObject) {
        if(text == "I'm from...."){
            txtOn.text = "何もないです"
            imgOn.image = UIImage(named:"saitama2.jpg")
            txtOn.textColor = UIColor.blackColor()
        }else if(text == "University..."){
            txtOn.text = "花火大会"
            imgOn.image = UIImage(named:"waseda3.jpg")
            txtOn.textColor = UIColor.redColor()
        }else if(text == "My skill!!!"){
            txtOn.text = "National Champion!!"
            imgOn.image = UIImage(named:"amefoot3.jpg")
            txtOn.textColor = UIColor.darkGrayColor()
        }else if(text == "Enthuastic"){
            txtOn.text = "Swift"
            imgOn.image = UIImage(named:"swift2.jpg")
            txtOn.textColor = UIColor.darkTextColor()
        }else if(text == "Respect to him"){
            txtOn.text = "Steve Jobs"
            imgOn.image = UIImage(named:"stevejobs2.jpg")
        }else if(text == "The place I want to go"){
            txtOn.text = "Pallawan"
            imgOn.image = UIImage(named:"pallawan.jpg")
            txtOn.textColor = UIColor.blueColor()
        }else if(text == "My Family"){
            txtOn.text = "I love them!"
            imgOn.image = UIImage(named:"myfamily3.jpg")
            txtOn.textColor = UIColor.blackColor()
        }else if(text == "My Best Friends"){
            txtOn.text = "So fun!!"
            imgOn.image = UIImage(named:"huzokukai3.jpg")
            txtOn.textColor = UIColor.redColor()
        }else if(text == "Thank you"){
            txtOn.text = "Enjoying our Cebu's Life!!"
            imgOn.image = UIImage(named:"IMG_8922.jpg")
            txtOn.textColor = UIColor.yellowColor()
        }else{}

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
