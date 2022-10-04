//
//  Login.swift
//  ColoriSpezie
//
//  Created by user228391 on 10/4/22.
//

import SwiftUI

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct LoginView: View {
    @State var userValue = userLogin(username:  "", password: "")
    var body: some View {
        VStack {
            Spacer()
            Image("Logo")
                .resizable()
                .frame(width: 175,height: 175)
            Text("Login")
                .bold()
                .font(.title)
            textField(withIcon: "person.fill", textValue: $userValue.username,
            isMandatory: true, textHint: "Inserisci username")
            textField(withIcon: "key.fill", textValue: $userValue.password,
                        isMandatory: true, isSecret: true, textHint: "Inserisci password")
            Spacer()
            Button(action: {}) {
            HStack{
            Text("Login")
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
struct userLogin {
    var username: String = ""
    var password: String = ""
    var isAllMandatoryFiledsEmpty: Bool {
        return username.isEmpty || password.isEmpty
    }
    var isAnyMandatoryFiledsEmpty: Bool {
        return username.isEmpty && password.isEmpty
    }
    mutating func emptyFileds() {
        username = ""
        password = ""
    }
}

struct field: View {
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
