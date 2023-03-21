//
//  File.swift
//  QuotesApp
//
//  Created by Alex Tran on 3/21/23.
//

import Foundation
class Quote: Identifiable, Decodable {
    var id: UUID?
    var quote: String
    var author: String
    var description: String
}
