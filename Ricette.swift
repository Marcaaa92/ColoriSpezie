//
//  Ricette.swift
//  ColoriSpezie
//
//  Created by user228391 on 10/17/22.
//

import Foundation

struct Passaggio: Identifiable {
    let id = UUID()
    var titolo: String
    var ingredienti: [Ingrediente]
    var procedimento: String
}

struct Ricetta: Identifiable {
    let id = UUID()
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

var ricette = [Ricetta(
    titolo: "Spaghetti", ingredienti: [
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
    note: "", difficolta: "Media", descrizione: "Due ricetta a caso"),
               Ricetta(
                   titolo: "Lasagnette", ingredienti: [
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
                   note: "", difficolta: "Media", descrizione: "Una ricetta a caso"),
               Ricetta(
                   titolo: "Pitza", ingredienti: [
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
                   note: "", difficolta: "Media", descrizione: "Una ricetta a caso"),
               Ricetta(
                   titolo: "Acqua", ingredienti: [
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
                   note: "", difficolta: "Media", descrizione: "Una ricetta a caso"),
]
