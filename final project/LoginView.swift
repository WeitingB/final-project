//
//  Login.swift
//  final project
//
//  Created by Caren on 2022/12/24.
//

import SwiftUI

struct Login: View {
    @State var username = ""
    @State var email = ""
    @State private var isActive: Bool = false
        
    var body: some View {
        Form {
            Section {
                TextField("Username",text: $username)
                TextField("Email",text: $email)
                }
            Section {
                VStack{
                    NavigationLink(destination: ContentView(),isActive: self.$isActive){
                        }
                    Button("Create account"){
                            print("Creating account..."); self.isActive = true
                        }
                    }
                }
                .disabled(username.isEmpty || email.isEmpty)
            }
        }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
