//
//  AppState.swift
//  SimpleCounter
//
//  Created by bbmm on 2020/08/28.
//  Copyright © 2020 bbmm. All rights reserved.
//

import Foundation
import ReSwift

struct AppState: StateType {
    var counterState: CounterState
    
    init(counterState: CounterState = .init()) {
        self.counterState = counterState
    }
}

func appReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()
    state.counterState = CounterReducer.reduce(action: action, state: state.counterState)
    return state
}
