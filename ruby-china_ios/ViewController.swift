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

var topics: [TopicModel] = []

class ViewController: UIViewController {

  @IBOutlet weak var topicsList: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func okTapped(sender: AnyObject) {
    Alamofire.request(.GET, Topics)
      .responseSwiftyJSON {
        (request, response, data, error) ->  Void in
        for item in data.arrayValue {
          var id = item["id"].stringValue
          var title = item["title"].string!
          var url = Topic(id)
        }

    }
    
 
  }
}
