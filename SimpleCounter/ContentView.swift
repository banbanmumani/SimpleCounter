//
//  ContentView.swift
//  SimpleCounter
//
//  Created by bbmm on 2020/08/28.
//  Copyright © 2020 bbmm. All rights reserved.
//

import SwiftUI
import ReSwift

struct ContentView: View {
    @ObservedObject var state: CounterState
    let reduxStore: ReduxStore

    init(reduxStore: ReduxStore) {
        self.reduxStore = reduxStore
        self.state = reduxStore.state.counterState
    }
    
    var body: some View {
        VStack {
            Text("\(state.count)")
                .font(.largeTitle)
                .bold()
            
            HStack {
                Button(action: {
                    self.reduxStore.dispatch(CounterAction.increaseCounter)
                }) {
                    Text("+")
                }
                .frame(width: 50, height: 50)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .padding()
                Button(action: {
                    self.reduxStore.dispatch(CounterAction.decreaseCounter)
                }) {
                    Text("-")
                }
                .frame(width: 50, height: 50)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(reduxStore: AppMain().reduxStore)
    }
}
