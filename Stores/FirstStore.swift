//
//  FirstStore.swift
//  CombineTestapp1
//
//  Created by 横山賢一 on 2023/04/03.
//

import ComposableArchitecture

struct FirstStore: ReducerProtocol {
    struct FirstState: Equatable {
        var count = 0
    }
    
    // Action
    enum FirstAction: Equatable {
        case decrementButtonTapped
        case incrementButtonTapped
    }

    // Environment = 外部要因
    struct FirstEnvironment {}

    func reduce(into state: inout FirstState, action: FirstAction) -> EffectTask<FirstAction> {
        switch action {
        case .decrementButtonTapped:
            state.count -= 1
            return .none
        case .incrementButtonTapped:
            state.count += 1
            return .none
        }
    }

}

// state
//struct FirstState: Equatable {
//    var count = 0
//}

//struct FirstState: Equatable {
//    var count = 0
//}
//
//// Action
//enum FirstAction: Equatable {
//    case decrementButtonTapped
//    case incrementButtonTapped
//}
//
//// Environment = 外部要因
//struct FirstEnvironment {}
//
//// reducer
//let firstReducer = AnyReducer<FirstState, FirstAction, FirstEnvironment> { state, action, _ in
//    switch action {
//    case .decrementButtonTapped:
//        state.count -= 1
//        return .none
//    case .incrementButtonTapped:
//        state.count += 1
//        return .none
//    }
//}
