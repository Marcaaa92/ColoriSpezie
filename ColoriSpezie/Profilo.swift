//
//  Profilo.swift
//  ColoriSpezie
//
//  Created by user228391 on 10/17/22.
//

import SwiftUI





struct Profilo: View {
    var body: some View {
        
        
        NavigationView {
            VStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200,height: 200)
                
                Text("Account")
                
                NavigationLink(destination: LoginView()) {
                    //Button(action: {}) {
                        HStack{
                            Text("Logout")
                                .padding(.horizontal)
                            Image(systemName: "arrow.right")
                        }.padding()
                    //	}
                    .foregroundColor(Color.white)
                    .background(Color(UIColor(red: 0.07, green: 0.58, blue: 0.46, alpha: 1.00)))
                    .cornerRadius(8)
                    
                }
            }
        }
        
    }
}




struct Profilo_Previews: PreviewProvider {
    static var previews: some View {
        Profilo()
    }
}


