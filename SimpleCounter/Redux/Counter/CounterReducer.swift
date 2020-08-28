//
//  CounterReducer.swift
//  SimpleCounter
//
//  Created by bbmm on 2020/08/28.
//  Copyright © 2020 bbmm. All rights reserved.
//

import Foundation
import ReSwift

struct CounterReducer {
    static func reduce(action: Action, state: CounterState) -> CounterState {
        switch action {
        case let action as CounterAction:
            switch action {
            case .increaseCounter:
                state.count += 1
            case .decreaseCounter:
                state.count -= 1
            }
        default:
            break
        }
        return state
    }
}
