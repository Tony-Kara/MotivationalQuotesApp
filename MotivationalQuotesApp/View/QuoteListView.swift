//
//  ContentView.swift
//  MotivationalQuotesApp
//
//  Created by Tony-eniola on 9/25/21.
//

import SwiftUI

struct QuoteListView: View {
    var model = QuoteModel()
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                
                ScrollView {
                    LazyVStack {
                        ForEach(model.qoutes) { model in
                            NavigationLink {
                                QuoteDetailView(model: model)
                            } label: {
                                ZStack {
                                    Image(model.image)
                                        .resizable()
                                        .scaledToFill()
                                    VStack {                                    Text(model.quotes[0])
                                            .font(.title3)
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.center)
                                            .padding([.horizontal], 8.0)
                                            .padding(.bottom, 2.0)
                                        
                                        Text(model.name)
                                            .foregroundColor(.white)
                                            .font(Font.custom("Avenir Heavy", size: 20))
                                            .fontWeight(.bold)
                                    }
                                }
                                .frame(width: .none, height: 400, alignment: .center)
                                .clipped()
                                .cornerRadius(15)
                                .shadow(color: .black, radius: 5, x: 2, y: 2)
                                .padding(.horizontal)
                                .padding(.bottom,5.0)
                                .padding(.top, 20.0)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Quotes", displayMode: .inline)
        }
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
