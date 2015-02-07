//
//  Topic.swift
//  ruby-china_ios
//
//  Created by shooter on 2/7/15.
//  Copyright (c) 2015 shooter. All rights reserved.
//

import UIKit

class TopicModel: NSObject {
  var id: String
  var title: String
  var body: String
  var body_html: String
  
  init (id: String, title: String, body: String, body_html: String) {
    self.id = id
    self.title = title
    self.body = body
    self.body_html = body_html
  }
}
