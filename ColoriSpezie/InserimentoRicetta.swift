//
//  InserimentoRicetta.swift
//  ColoriSpezie
//
//  Created by user228391 on 10/4/22.
//

import SwiftUI




struct RicettaView: View {
    var ricetta: Ricetta

    
    var body: some View{
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(height: 300, alignment: .center)
                Text(ricetta.titolo)
                Text("Difficoltà: " + ricetta.difficolta)
                Text(ricetta.descrizione)
                Text("Ingredienti")
                VStack{
                    ForEach(ricetta.ingredienti, id: \.id) { ingr in
                    Text("\(ingr.nome): \(ingr.quantita)")
                }
                }
                Text("Procedimento")
                VStack{
                    ForEach(ricetta.procedimento, id: \.id) { psg in
                    Text(psg.titolo)
                    Text("Ingredienti utilizzati")
                        VStack{
                            ForEach(psg.ingredienti, id: \.id) { ing in
                            Text("\(ing.nome): \(ing.quantita)")
                        }
                        }
                    Text(psg.procedimento)
                }
                }
            }
        }
    }
}

struct RicettaView_Previews: PreviewProvider {
    static var previews: some View {
        RicettaView(ricetta: ricette[0])
    }
}
