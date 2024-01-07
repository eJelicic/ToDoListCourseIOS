//
//  LoginView.swift
//  ToDoList
//
//  Created by Eugen Jelicic on 07.01.2024..
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack{
                //Header
                HeaderView()
                
                //LoginForm
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    
                    Button {
                        //attempt
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                
                //Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Accoount",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
