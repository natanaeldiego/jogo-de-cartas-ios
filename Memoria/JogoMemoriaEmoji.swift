//
//  JogoMemoriaEmoji.swift
//  Memoria
//
//  Created by Natanael Diego on 07/04/21.
//

import Foundation

class JogoMemoriaEmoji: ObservableObject { //ViewModel
    
    var emojis = ["π", "π₯", "πΆ", "π½", "π₯", "π"].shuffled()
    
    @Published
    var model: JogoMemoria<String> = JogoMemoriaEmoji.criarJogoMemoria(dataEmoji: ["π", "π₯", "πΆ", "π½", "π₯", "π"])
    

    static func criarJogoMemoria(dataEmoji: Array<String>) -> JogoMemoria<String> {
        
        var emojis = dataEmoji.shuffled()
        emojis = emojis.dropLast(emojis.count - Int.random(in: 2...5))
        
        return JogoMemoria<String>(numeroParesCartas: emojis.count) { emojis[$0] }
    }
    
    // MARK: - Acesso Γ  Model
    
    var cartas: Array<JogoMemoria<String>.Carta> {
        model.cartas
    }
    
    var numeroPares: Int {
        Int(model.cartas.count / 2)
    }
    
    // MARK: - Processamento de IntenΓ§Γ΅es
    
    func escolher(carta: JogoMemoria<String>.Carta) {
        model.escolher(carta: carta)
    }
    
    func novoJogo(dataEmoji: Array<String>) {
        model = JogoMemoriaEmoji.criarJogoMemoria(dataEmoji: dataEmoji)
    }
    
    
}
