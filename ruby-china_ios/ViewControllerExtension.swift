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
    let cell = self.topicsList.dequeueReusableCellWithIdentifier("topicCell") as  UITableViewCell
    
    // Don't forget to set tableViewCell Identifier in storyboard
    return cell
  }
  
}