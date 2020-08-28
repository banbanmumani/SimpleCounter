//
//  CounterState.swift
//  SimpleCounter
//
//  Created by bbmm on 2020/08/28.
//  Copyright © 2020 bbmm. All rights reserved.
//

import Foundation
import ReSwift
import Combine
import SwiftUI

// MARK: State
final class CounterState: StateType, ObservableObject {
    @Published var count: Int = 0
}
