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
    var ingredienti: [Ingrediente]
    var procedimento: String
}

struct Ricetta {
    var titolo: String
    var ingredienti: [Ingrediente]
    var procedimento: [Passaggio]
    var note: String
    var immagine = ""
    var difficolta: String
    var descrizione: String
}

struct Ingrediente: Identifiable {
    let id = UUID()
    var nome: String
    var quantita: String
}

struct RicettaView: View {
    var ingredienti: [Ingrediente] = [
        Ingrediente(
            nome: "Farina", quantita: "100 g"),
        Ingrediente(
            nome: "Acqua", quantita: "100 g")
    ]
    @State var ricetta = Ricetta(
        titolo: "Titolo", ingredienti: [
            Ingrediente(
                nome: "Farina", quantita: "100 g"),
            Ingrediente(
                nome: "Acqua", quantita: "100 g")
        ],
        procedimento: [
            Passaggio(titolo: "pass1", ingredienti: [
                Ingrediente(
                    nome: "Farina", quantita: "100 g"),
                Ingrediente(
                    nome: "Acqua", quantita: "100 g")], procedimento: "Fai ing1 + 400"),
            Passaggio(titolo: "pass2", ingredienti: [
                Ingrediente(
                            nome: "Farina", quantita: "100 g"),
                Ingrediente(
                            nome: "Acqua", quantita: "100 g")],procedimento: "Fai ing1 + 900")],
        note: "", difficolta: "Media", descrizione: "Una ricetta a caso")
    
    var body: some View{
        //ScrollView(.vertical) {
            VStack(spacing: 10) {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(height: 300, alignment: .center)
                Text(ricetta.titolo)
                Text("Difficoltà: " + ricetta.difficolta)
                Text(ricetta.descrizione)
                Text("Ingredienti")
                List(/*ricetta.*/ingredienti, id: \.id) { ingr in
//                    print(ingrediente.nome + ": " + ingrediente.quantita)
                    Text("\(ingr.nome): \(ingr.quantita)")
                }
                Text("AAAAAA")
            }
        //}
    }
}

struct RicettaView_Previews: PreviewProvider {
    static var previews: some View {
        RicettaView()
    }
}
