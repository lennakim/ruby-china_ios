//
//  ViewController.swift
//  ruby-china_ios
//
//  Created by shooter on 2/5/15.
//  Copyright (c) 2015 shooter. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireSwiftyJSON

class ViewController: UIViewController {

  @IBOutlet weak var titleTxt: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    titleTxt.frame = CGRect(x: 0, y: 0, width: 400, height: 100)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func okTapped(sender: AnyObject) {
    Alamofire.request(.GET, "https://ruby-china.org/api/topics.json")
      .responseSwiftyJSON {
        (request, response, data, error) ->  Void in
        var title = data[0]["title"].string
        self.titleTxt.text =  title!
    }
    
  }
  
}

