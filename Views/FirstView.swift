//
//  FirstView.swift
//  CombineTestapp1
//
//  Created by 横山賢一 on 2023/04/06.
//

import ComposableArchitecture
import SwiftUI

struct FirstView: View {
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Single Counter with TCA")) {
                    ForEach (0..<5) { i in
                        CounterView(
                            store: Store(
                                initialState: FirstStore.FirstState(),
                                reducer: FirstStore()
                            ),
                            label:  "Counter"
                        )
                        .buttonStyle(.borderless)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    
                }
                Section(header: Text("Single Counter2 with TCA")) {
                    ForEach (0..<2) { i in
                        CounterView(
                            store: Store(
                                initialState: FirstStore.FirstState(),
                                reducer: FirstStore()
                            ),
                            label:  "Counter"
                        )
                        .buttonStyle(.borderless)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    
                }
                
            }
            .navigationBarTitle("SimpleCounter")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
    
