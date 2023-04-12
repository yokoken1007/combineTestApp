//
//  FirstView.swift
//  CombineTestapp1
//
//  Created by 横山賢一 on 2023/04/03.
//

import ComposableArchitecture
import SwiftUI

struct CounterView: View {
    // 旧タイプ
//    let store: Store<FirstState, FirstAction>
    // 新タイプ
    let store: StoreOf<FirstStore>
    
    var label: String
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            HStack {
                Text("\(label):")
                    .padding()
                    .font(.subheadline)
                Button("-") { viewStore.send(.decrementButtonTapped)}
                Text("\(viewStore.count)").font(.body.monospacedDigit())
                Button("+") { viewStore.send(.incrementButtonTapped) }
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        
        CounterView(
            store: Store(
                initialState: FirstStore.FirstState(),
                reducer: FirstStore()
            ),
            label:  "Counter"
        )
    }
        
}
