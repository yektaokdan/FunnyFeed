//
//  ContentView.swift
//  FunnyFeed
//
//  Created by yekta on 27.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }
            .navigationTitle("Funny Feed")
            .toolbar {
                // ToolbarItem yerleşimini .navigationBarTrailing olarak belirleyerek sağ üste ekliyoruz
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Test") {
                        jokesVM.getNewJoke()
                    }
                }
            }
        }
    }
}

// Preview için struct
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

