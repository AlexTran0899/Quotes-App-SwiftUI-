//
//  QuoteModel.swift
//  QuotesApp
//
//  Created by Alex Tran on 3/21/23.
//

import Foundation
class QuoteModel: ObservableObject {
    @Published var quotes = [Quote]()
    
    init () {
        let dataService = DataService()
        quotes = dataService.getQuotes()
    }
}
