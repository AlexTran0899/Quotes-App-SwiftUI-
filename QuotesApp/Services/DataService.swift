//
//  DataService.swift
//  QuotesApp
//
//  Created by Alex Tran on 3/21/23.
//

import Foundation
class DataService {
    func getQuotes() -> [Quote] {
        // Get the path to the json file
        let dataString = Bundle.main.path(forResource: "Quote", ofType: "json")
        
        guard dataString != nil else {
            return [Quote]()
        }
        let url = URL(fileURLWithPath: dataString!)
        
        do {
            let data = try Data(contentsOf: url)
            do {
                let decoder = JSONDecoder()
                let parsedData = try decoder.decode([Quote].self, from: data)
                for q in parsedData {
                    print(q.author)
                    q.id = UUID()
                }
                return parsedData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        return [Quote]()
    }
}
