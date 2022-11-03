//
//  InserimentoRicetta.swift
//  ColoriSpezie
//
//  Created by user228391 on 10/4/22.
//

import SwiftUI
struct BookmarkView: View {
    /*var ingredienti: [Ingrediente] = [
        Ingrediente(
            nome: "Farina", quantita: "100 g"),
        Ingrediente(
            nome: "Acqua", quantita: "100 g")
    ]*/
    
    var body: some View{
        NavigationView {
            List {
                ForEach(ricette, id: \.id) { ric in
                    NavigationLink(destination: RicettaView(ricetta: ric)) {
                        Text(ric.titolo).font(Font.system(size: 24)).padding()
                    }
                }
                .onDelete(perform: delete)
                .onMove(perform: moveRow)
                .navigationBarTitle(Text("Ricette salvate"))
            }.navigationBarTitle(Text("To Do"))
                .navigationBarItems(trailing: EditButton())
        }
    }
    func delete(at indexes: IndexSet) {
        if let first = indexes.first {
            ricette.remove(at: first)
        }
    }
    func moveRow(from indexes: IndexSet, to destination: Int) {
        if let first = indexes.first {
            ricette.insert(ricette.remove(at: first), at: destination)
        }
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}
