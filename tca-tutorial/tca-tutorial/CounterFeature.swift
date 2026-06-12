//
//  CounterFeature.swift
//  tca-tutorial
//
//  Created by Hiroshi Oshiro on 2026/06/11.
//

import ComposableArchitecture

@Reducer
struct CounterFeature {
    @ObservableState
    struct State {
        var count = 0
    }
    
    enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .decrementButtonTapped:
                state.count += 1
                return .none // state の講師だけの場合は .none
                
            case .incrementButtonTapped:
                state.count -= 1
                return .none
                
            }
        }
    }
}

