//
//  CardView.swift
//  QuotesApp
//
//  Created by Alex Tran on 3/21/23.
//

import SwiftUI

struct CardView: View {
    @State var quote: Quote
    @State var image: String
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .cornerRadius(15)
            VStack(alignment: .leading, spacing: 20){
                Text(quote.quote)
                    .font(.system(size: 24))
                    .bold()
                    .multilineTextAlignment(.leading)
                Text("- " + quote.author)
            }.foregroundColor(.white)
                .padding([.top, .leading], 20.0)
                .shadow(color: .black, radius: 10, x: 2, y: 2)
        }
        .frame(width: .none, height: 400, alignment: .center)
        .cornerRadius(15)
        .padding([.leading, .trailing])
        .clipped()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let quote = QuoteModel().quotes[0]
        CardView(quote: quote, image: "1")
    }
}
