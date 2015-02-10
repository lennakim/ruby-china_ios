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
  var avatar: String
  var created_at: String

  init (id: String, title: String, avatar: String, created_at: String) {
    self.id = id
    self.title = title
    self.avatar = avatar
    self.created_at = created_at
  }

}
