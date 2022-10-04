//
//  InserimentoRicetta.swift
//  ColoriSpezie
//
//  Created by user228391 on 10/4/22.
//

import SwiftUI


struct Passaggio: Identifiable {
    let id = UUID()
    var titolo: String
    var ingredienti: [String]
    var procedimento: String
}

struct Ricetta {
    var titolo: String
    var ingredienti: [Ingrediente]
    var procedimento: [Passaggio]
    var note: String
    var immagine = ""
}

struct Ingrediente: Identifiable {
    let id = UUID()
    var nome: String
    var quantita: String
}

struct RicettaView: View {
    @State var ricetta = Ricetta(titolo: "Titolo", ingredienti: [Ingrediente(nome: "ing1", quantita: "300 g"), Ingrediente(nome: "ing2", quantita: "600 g")], procedimento: [Passaggio(titolo: "pass1", ingredienti: ["ing1, ing2"], procedimento: "Fai ing1 + 400"), Passaggio(titolo: "pass2", ingredienti: ["ing2"], procedimento: "Fai ing1 + 900")], note: "")
    
    var body: some View{
        ScrollView {
            VStack{
                Text(ricetta.titolo)
                Text("Ingredienti")
                VStack {
                    ForEach(ricetta.ingredienti, id: \.id) { ingrediente in
                        Text("\(ingrediente.nome): \(ingrediente.quantita)")
                        
                    }
                }
            }
            VStack {
                Text("Procedimento")
                VStack {
                    ForEach(ricetta.procedimento, id: \.id) { passaggio in
                        Text(passaggio.titolo)
                        Text("Ingredienti utilizzati:")
                        HStack {
                            ForEach(passaggio.ingredienti, id: \.self) { ingrediente in
                                Text(ingrediente)
                            }
                        }
                        Text(passaggio.procedimento)
                    }
                }
            }
            if (ricetta.note != "") {
                Text("Note")
                Text(ricetta.note)
            }
        }
    }
}

struct RicettaView_Previews: PreviewProvider {
    static var previews: some View {
        RicettaView()
    }
}
