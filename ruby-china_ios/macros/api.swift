//
//  api.swift
//  ruby-china_ios
//
//  Created by shooter on 2/5/15.
//  Copyright (c) 2015 shooter. All rights reserved.
//

import Foundation

let Domain = "https://ruby-china.org/api"
let Topics = Domain + "/topics.json"
let Users = Domain + "/users.json"
let Nodes = Domain + "/nodes.json"

func UserOfTopics(id: String) -> String {
  return Domain + "/users/\(id)/topics.json"
}

func Topic(id: String) -> String {
  return  Domain + "/topics/\(id).json"
}
