//
//  ViewControllerExtension.swift
//  ruby-china_ios
//
//  Created by shooter on 2/7/15.
//  Copyright (c) 2015 shooter. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {

  // MARK - UITableViewDataSource
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    // Don't forget to set tableViewCell Identifier in storyboard
    let cell = self.topicsList.dequeueReusableCellWithIdentifier("topicCell") as  UITableViewCell
   
//      var topic = topics[indexPath.row] as TopicModel
      var title = cell.viewWithTag(101) as UILabel
      var avatar = cell.viewWithTag(102) as UIImageView
      var time = cell.viewWithTag(103) as UILabel
    return cell
  }
  
}