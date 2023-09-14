//
//  ContentView.swift
//  FunFactsWatchApp Watch App
//
//  Created by Kira Kira on 8/1/23.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var viewModel: ViewModel
  var body: some View {
    ScrollView{
      VStack {
        Button("New Fact") {
          viewModel.networkCall()
        }
        .foregroundColor(.blue)
        Spacer()
        Text(viewModel.factText)
      }
      .padding()
    }
  }
}

