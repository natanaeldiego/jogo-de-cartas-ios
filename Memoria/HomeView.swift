//
//  HomeView.swift
//  Memoria
//
//  Created by Natanael Diego on 07/04/21.
//

import SwiftUI

struct HomeView: View {
    let viewModel = JogoMemoriaEmoji()
    
    var body: some View {
        HStack{
            NavigationView{
                VStack{
                    HStack{
                        Text("Escolha o seu jogo de cartas favorito e divirta-se")
                            .font(.title)
                            .fontWeight(.bold)
                    }.padding(.all)
                    HStack{
                        NavigationLink(destination: JogoMemoriaEmojiView(viewModel: viewModel, newEmoji: ["👹", "👺", "🤡", "👻", "👽", "☠️"])) {
                            VStack{
                                Image(systemName: "hand.point.right.fill")
                                    .foregroundColor(.white)
                                Text("Tema de cartas 1")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }.padding(.all)
                            .background(Color.blue)
                            .cornerRadius(10)
                        }.navigationBarTitle("Home", displayMode: .inline)
                        NavigationLink(destination: JogoMemoriaEmojiView(viewModel: viewModel, newEmoji: ["🇧🇷", "🇨🇦", "🇧🇦", "🇰🇷", "🇪🇨", "🇬🇮"])) {
                            VStack{
                                Image(systemName: "hand.point.right.fill")
                                    .foregroundColor(.white)
                                Text("Tema de cartas 2")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }.padding(.all)
                            .background(Color.blue)
                            .cornerRadius(10)
                        }.navigationBarTitle("Home", displayMode: .inline)
                    }
                    HStack{
                        NavigationLink(destination: JogoMemoriaEmojiView(viewModel: viewModel, newEmoji: ["☎️", "💎", "💵", "💰", "📺", "🎙"])) {
                            VStack{
                                Image(systemName: "hand.point.right.fill")
                                    .foregroundColor(.white)
                                Text("Tema de cartas 3")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }.padding(.all)
                            .background(Color.blue)
                            .cornerRadius(10)
                        }.navigationBarTitle("Home", displayMode: .inline)
                        NavigationLink(destination: JogoMemoriaEmojiView(viewModel: viewModel, newEmoji: ["🚵🏻‍♀️", "🧗‍♀️", "🏂", "⛹️‍♀️", "🤽", "🏆"])) {
                            VStack{
                                Image(systemName: "hand.point.right.fill")
                                    .foregroundColor(.white)
                                Text("Tema de cartas 4")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }.padding(.all)
                            .background(Color.blue)
                            .cornerRadius(10)
                        }.navigationBarTitle("Home", displayMode: .inline)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
