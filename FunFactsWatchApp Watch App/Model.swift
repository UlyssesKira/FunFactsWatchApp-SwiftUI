//
//  Model.swift
//  RandomFunFacts
//
//  Created by Kira Kira on 6/26/23.
//

import Foundation
import Alamofire

struct Model {
  var factText = "Press the above button for a new fact" }


struct Constants {
  static let url = "https://api.api-ninjas.com/v1/facts?limit=1"
  static let apiKey = "NJ9ntNpf/AphN4QyU5g91A==XKjnNVPMorTCAHBu"
}

struct Response: Codable {
  let fact: String
}

