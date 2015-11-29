//
//  ViewController.swift
//  testweek2day3
//
//  Created by tamura seiya on 2015/10/14.
//  Copyright (c) 2015年 Seiya Tamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var members: [String] = ["I'm from....","University...","My skill!!!","Enthuastic","Respect to him","The place I want to go","My Best Friends","My Family","Thank you"]
    let ResultPic0: UIImage! = UIImage(named: "japan.png")
    let ResultPic1: UIImage! = UIImage(named: "waseda.jpg")
    let ResultPic2: UIImage! = UIImage(named: "amefoot1.jpg")
    let ResultPic3: UIImage! = UIImage(named: "taylorswift.jpeg")
    let ResultPic4: UIImage! = UIImage(named: "steveapple.jpg")
    let ResultPic5: UIImage! = UIImage(named: "cebu2.png")
    let ResultPic6: UIImage! = UIImage(named: "huzoku.jpg")
    let ResultPic7: UIImage! = UIImage(named: "myfamily1.jpg")
    let ResultPic8: UIImage! = UIImage(named: "shinya.hirai.jpg")
    
    
    //var images = [pict1, ResultPic1, ResultPic2]
    
    var selectMember:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        set.title = "Who I am"
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //membersの保持する値の数
        println(members.count)
        //for文の基礎
        //for 繰り返しの考え方。
        for (var i = 0;i < members.count; i++){
//            println(i)
            println(members[i])
        }
        
        
    }
    
    //cellの行数を、membersの配列の数を数える
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //membersの数を数える
        return members.count
    }
    
    
    //セルの内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .Default, reuseIdentifier:"myCell")
        var images = [ResultPic0, ResultPic1, ResultPic2,ResultPic3, ResultPic4, ResultPic5,ResultPic6, ResultPic7,ResultPic8]
        //cel.textLabel?.textとは
        ////cell上にもともと備え付けられているUILabelのtextプロパティ
        cell.textLabel?.text = "\(members[indexPath.row])"
        cell.textLabel?.textColor = UIColor.brownColor()
        cell.backgroundColor = UIColor.blackColor()
        //1つ１つのセルにimageをつける
        //var images = [pict1, ResultPic1, ResultPic2]
        //cell.imageView?.image = images[]
        cell.accessoryType = .DisclosureIndicator
        println("indexpath.rowの値　= \(indexPath.row)")
        
        //for文を使って,Viewcellに画像を表示させる
        for (var i = 0;i < indexPath.row + 1; i++){
            cell.imageView?.image = images[i]
        }

        //cell.imageView?.image = images[indexPath.row]
        return cell
    }
    
//    func buttonTapped(sender: UITableView){
//        performSegueWithIdentifier("myCell", sender: tableView)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //selectされた時の処理
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("VCでタップされた値\(members[indexPath.row])")
        
        //値を受け渡す処理
        selectMember = members[indexPath.row]
        
        //SVCに遷移する
        //コードで画面遷移させたい場合の定型文
        //使用するには、必ず指定するSegueにidをつけておく必要があるs
        performSegueWithIdentifier("showSVC", sender: nil)
    }
    
//    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
//        println("VCでタップされた値\(members[indexPath.row])")
//        
//        //値を受け渡す処理
//        selectMember = members[indexPath.row]
//        
//        //SVCに遷移する
//        //コードで画面遷移させたい場合の定型文
//        //使用するには、必ず指定するSegueにidをつけておく必要があるs
//        performSegueWithIdentifier("showSVC", sender: nil)
//    }
    
    //segueで遷移する時の処理
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showSVC"){
            let sVC: SecondViewController = segue.destinationViewController as! SecondViewController
            
            //SVC内に変数を用意し、そこにselectMembersの値を代入
            sVC.text = selectMember
        }
    }

//
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if sender is NSIndexPath {
//            if let shop = sender as! UITableView {
//                let viewController = segue.destinationViewController as! ViewController
//                // ここでなんらかの処理を書く
//            }
//        }
//    }
    
}

