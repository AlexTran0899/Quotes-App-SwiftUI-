//
//  DetailView.swift
//  QuotesApp
//
//  Created by Alex Tran on 3/21/23.
//

import SwiftUI

struct DetailView: View {
    @State var quote: Quote
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            Text("Description")
                .font(.headline)
            Text(quote.description)
        }.navigationTitle(quote.author)
            .padding(.horizontal, 20)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let quote = QuoteModel().quotes[0]
        DetailView(quote: quote)
    }
}
