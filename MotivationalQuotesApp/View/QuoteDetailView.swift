//
//  QuoteDetailView.swift
//  MotivationalQuotesApp
//
//  Created by Tony-eniola on 9/25/21.
//


import SwiftUI

struct QuoteDetailView: View {
    var model : Quote?
    init(model: Quote){
        self.model = model
    }
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20){
                if let model = model {
                    Text(model.name)
                        .padding(.bottom, 5)
                        .font(Font.custom("Avenir Heavy", size: 25))
                    ForEach(model.quotes, id: \.self) { quotes in
                        Text(quotes)
                            .padding(.bottom, 5)
                    }
                }
            }
            .padding()
        }  
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetailView(model: model.qoutes[0])
    }
}

