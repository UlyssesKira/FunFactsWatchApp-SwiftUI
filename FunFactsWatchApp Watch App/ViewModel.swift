//
//  ViewModel.swift
//  FunFactsWatchApp Watch App
//
//  Created by Kira Kira on 8/1/23.
//


import SwiftUI
import Foundation
import Alamofire

class ViewModel: ObservableObject {
  
  @Published var model = Model(){didSet{
    UserDefaults.standard.set(model.factText, forKey: "savedFact")
  }}

  
  var factText: String {
    if let previousFact = UserDefaults.standard.string(forKey: "savedFact") {
      return previousFact
    }
    else
    {
      return model.factText
    }

  }
  
  func networkCall() {
    
    let headers:HTTPHeaders = ["X-Api-Key": Constants.apiKey]
    
    AF.request(Constants.url, headers: headers)
      .responseDecodable(of: [Response].self) {response in
        
        self.model = Model(factText: response.value![0].fact)

      }

  }
  
  
}

