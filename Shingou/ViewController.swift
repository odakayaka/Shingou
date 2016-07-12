//
//  ViewController.swift
//  Shingou
//
//  Created by 尾高文香 on 2016/07/12.
//  Copyright © 2016年 com.odakaayaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var signalImageView: UIImageView!
    
    var blueImage:UIImage!
    var redImage:UIImage!
    var yellowImage:UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueImage = UIImage(named:"signal_blue.png")
        redImage = UIImage(named: "signal_red.png")
        yellowImage = UIImage(named: "signal_yellow.png")
        
        signalImageView.image = redImage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func blueBtnPushed(sender: AnyObject) {
       // resultLabel.text = "しんごうはあおいろ！"
        resultLabel.textColor = UIColor.blueColor()
        
        if signalImageView.image == blueImage{
            resultLabel.text = "せいかい！"
        }else{
            resultLabel.text = "まちがい！"
        }
        randomSignal()
        
    }

    @IBAction func yellowBtnPushed(sender: AnyObject) {
        //resultLabel.text = "しんごうはきいろ！"
        resultLabel.textColor = UIColor.yellowColor()
        
        if signalImageView.image == yellowImage{
            resultLabel.text = "せいかい！"
        }else{
            resultLabel.text = "まちがい！"
        }
        randomSignal()
    }
    
    @IBAction func redBtnPushed(sender: AnyObject) {
        //resultLabel.text = "しんごうはあかいろ！"
        resultLabel.textColor = UIColor.redColor()
        
        if signalImageView.image == redImage{
            resultLabel.text = "せいかい！"
        }else{
            resultLabel.text = "まちがい！"
        }
        randomSignal()
    }
    
    func randomSignal(){
        var randomNumber = arc4random() % 3
        
        if randomNumber == 0 {
            signalImageView.image = blueImage
        }else if randomNumber == 1{
            signalImageView.image = redImage
        }else{
            signalImageView.image = yellowImage
        }
    }
    
}

