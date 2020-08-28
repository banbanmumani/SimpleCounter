//
//  ReduxStore.swift
//  SimpleCounter
//
//  Created by bbmm on 2020/08/28.
//  Copyright © 2020 bbmm. All rights reserved.
//

import Foundation
import ReSwift

final class ReduxStore: ReactiveStore, ActionCreatorables {
    
    override init(store: Store<AppState>) {
        super.init(store: store)
    }
    
    private func create( _ actionCreatorProvider: @escaping RequestActionCreator) -> Action? {
        return actionCreatorProvider(state, self)
    }
    
    func dispatch(_ actionCreatorProvider: @escaping RequestActionCreator) {
        guard let action = create(actionCreatorProvider) else { return }
        dispatch(action)
    }
}
