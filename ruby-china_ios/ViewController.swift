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
    topics = getTopics()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func okTapped(sender: AnyObject) {

  }

  func getTopics() -> [TopicModel] {
    Alamofire.request(.GET, Topics)
      .responseSwiftyJSON {
        (request, response, data, error) in
        for item in data.arrayValue {
          var id = item["id"].stringValue
          var title = item["title"].string!
          var avatar = item["user"]["avatar_url"].string!
          var created_at = item["created_at"].string!
          var url = Topic(id)
          var topic = TopicModel(id: id, title: title, avatar: avatar, created_at: created_at)
          topics.append(topic)
        }
    }

    return topics
  }
}
