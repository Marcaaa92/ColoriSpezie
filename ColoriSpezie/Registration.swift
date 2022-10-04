//
//  Registration.swift
//  ColoriSpezie
//
//  Created by user228391 on 10/4/22.
//

import SwiftUI

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

struct RegistrationView: View {
    @State var userValue = userRegistration(username:  "", email: "", password1: "", password2: "")
    var body: some View {
        VStack {
            Spacer()
            Image("Logo")
                .resizable()
                .frame(width: 175,height: 175)
            Text("Registration")
                .bold()
                .font(.title)
            textField(withIcon: "person.fill", textValue: $userValue.username,
            isMandatory: true, textHint: "Inserisci username")
            textField(withIcon: "mail.fill", textValue: $userValue.email,
            isMandatory: true, textHint: "Inserisci email")
            textField(withIcon: "key.fill", textValue: $userValue.password1,
                        isMandatory: true, isSecret: true, textHint: "Inserisci password")
            textField(withIcon: "key.fill", textValue: $userValue.password2,
            isMandatory: true, isSecret: true, textHint: "Re-inserisci password")
            Spacer()
            Button(action: {}) {
            HStack{
            Text("Register")
            .padding(.horizontal)
            Image(systemName: "arrow.right")
            }.padding()
            }
            .foregroundColor(Color.white)
            .background(Color(UIColor(red: 0.07, green: 0.58, blue: 0.46, alpha: 1.00)))
            .cornerRadius(8)
            Spacer()
        }
    }
}
struct userRegistration {
    var username: String = ""
    var email: String = ""
    var password1: String = ""
    var password2: String = ""
    var isAllMandatoryFiledsEmpty: Bool {
        return username.isEmpty || email.isEmpty || password1.isEmpty || password2.isEmpty
    }
    var isAnyMandatoryFiledsEmpty: Bool {
        return username.isEmpty && email.isEmpty && password1.isEmpty && password2.isEmpty
    }
    mutating func emptyFileds() {
        username = ""
        email = ""
        password1 = ""
        password2 = ""
    }
}

struct textField: View {
    var withIcon: String
    @Binding var textValue: String
    var isMandatory: Bool = false
    var isSecret: Bool = false
    var textHint: String
    var body: some View {
    HStack {
        Image(systemName: withIcon)
        if isSecret {
            SecureField(textHint, text: $textValue)
        }
        else {
            TextField(textHint, text: $textValue)
        }
    }
    .padding()
    .overlay(RoundedRectangle(cornerRadius: 10)
    .stroke(isMandatory && textValue.isEmpty ? .red : .gray, lineWidth: 1))
    .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
    }
}
