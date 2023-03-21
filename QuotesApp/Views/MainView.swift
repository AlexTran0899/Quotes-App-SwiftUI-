//
//  ContentView.swift
//  M2L16 Challenge Solution
//
//  Created by Christopher Ching on 2021-02-04.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        
        // NavigationView to go to detail view
        NavigationView {
            
            ScrollView {
                // VStack to group all the cards
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Card for each author
                    ForEach(model.quotes) { a in
                        
                    // Link to detail view
                    NavigationLink(
                        destination: DetailView(quote: a),
                        label: {
                            CardView(quote: a, image: "1")
                        })
                    }
                }
                
            }
            .navigationBarTitle("Authors")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
