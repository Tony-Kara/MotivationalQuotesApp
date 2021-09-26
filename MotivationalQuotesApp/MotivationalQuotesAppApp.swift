//
//  MotivationalQuotesAppApp.swift
//  MotivationalQuotesApp
//
//  Created by mac on 9/25/21.
//

import SwiftUI

@main
struct MotivationalQuotesAppApp: App {
    var body: some Scene {
        WindowGroup {
            let model = QuoteModel()
            QuoteListView( quoteModel: model.qoutes[0])
                .environmentObject(QuoteModel())
        }
    }
}
