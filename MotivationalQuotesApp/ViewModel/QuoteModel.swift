//
//  QuoteModel.swift
//  MotivationalQuotesApp
//
//  Created by mac on 9/25/21.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var qoutes = [Quote]()
    
    init() {
        
        self.qoutes = DataService.getLocalData()
       
    }
    
    
}
