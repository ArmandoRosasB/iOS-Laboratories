//
//  ContentView.swift
//  LabInterfaces
//
//  Created by Armando Rosas Balderas on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var value = ""
    
    @State var notifications: Bool = false
    @State var call: Bool = false
    @State var screen_share: Bool = false
    
    @State var picker_value: Int = 0
    /*
    El body de nuestra vista es donde van a ir todos los
    componentes gráficos
    */
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Personal Info")
                    .font(.largeTitle)
                // Contenedor
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 50)
                
                ZStack {
                    Image("Profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.top, -150)
                        .zIndex(1)
                    
                    GroupBox{
                        Spacer().frame(height: 80)
                        
                        Text("Armando Rosas")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                        
                        Text("iOS Developer")
                            .font(.title2)
                            .frame(maxWidth: .infinity)
                        
                        // spacing: Espaciado entre elementos del HStack
                        HStack (spacing: 0) {
                            Group {
                                Circle()
                                    .fill(.green)
                                    .cornerRadius(3.0)
                                    .frame(width:10, height: 10)
                                
                                Text("Online")
                                    .foregroundColor(.green)
                                
                            }.padding([.top, .bottom], 8)
                                .padding([.trailing, .leading], 16)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.green, lineWidth: 3)
                        ).padding(.top, 20)
                    }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                        .zIndex(0)
                }
                
                Spacer().frame(height: 24).zIndex(0)
                
                HStack(spacing: 64) {
                    Button {
                        print("Message")
                    } label : {
                        Image(systemName: "message.fill")
                            .resizable()
                            .tint(.red)
                            .frame(width: 24, height: 24)
                            .padding(16)
                            // Colores RGB
                            .background(Color(UIColor(red: 1, green: 0, blue: 0, alpha: 0.2)))
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.red, lineWidth: 1))
                    }
                    
                    Button {
                        print("Calling...")
                    } label : {
                        Image(systemName: "phone.fill")
                            .resizable()
                            .tint(.green)
                            .frame(width: 24, height: 24)
                            .padding(16)
                            // Colores RGB
                            .background(Color(UIColor(red: 0, green: 1, blue: 0, alpha: 0.2)))
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.green, lineWidth: 1))
                    }
                    
                    Button {
                        print("VideoChat")
                    } label : {
                        Image(systemName: "video.fill")
                            .resizable()
                            .tint(.blue)
                            .frame(width: 32, height: 24)
                            .padding(16)
                            // Colores RGB
                            .background(Color(UIColor(red: 0, green: 0, blue: 1, alpha: 0.2)))
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.blue, lineWidth: 1))
                    }
                }
                
                Spacer().frame(height: 26)
                
                Group {
                    Button {
                        print("Información")
                    } label : {
                        Text("INFO").frame(maxWidth: .infinity)
                            .padding(10)
                            .foregroundColor(.gray)
                            .background(Color(UIColor.systemGray6))
                            .overlay(
                                Capsule()
                                    .stroke(Color(UIColor.systemGray), lineWidth: 1)
                                )
                                }.clipShape(Capsule())
                                    .disabled(true)
                    
                    Form(content: {
                        Section(header: Text("First Name")) {
                            TextField("First", text: $value)
                        }
                        
                        Section(header: Text("Last Name")) {
                            TextField("Last", text: $value)
                        }
                    }).frame(height: 220)
                    
                    Spacer().frame(height: 26)
                    
                    Button {
                        print("Notificaciones")
                    } label : {
                        Text("NOTIFICATIONS").frame(maxWidth: .infinity)
                            .padding(10)
                            .foregroundColor(.gray)
                            .background(Color(UIColor.systemGray6))
                            .overlay(
                            Capsule()
                                .stroke(Color(UIColor.systemGray), lineWidth: 1)
                            )
                    }.clipShape(Capsule())
                        .disabled(true)
                }
                
                VStack (spacing: 20){
                    Spacer().frame(height: 30)
                    
                    // Componente de switch y toggle
                    
                    Toggle(isOn: $notifications) {
                        // Texto del componente
                        Text("In-app notifications")
                    }
                    
                    Divider()
                    
                    Toggle(isOn: $call) {
                        Text("Call")
                    }
                    
                    Divider()
                    
                    Toggle(isOn: $screen_share) {
                        Text("Screen Share")
                    }
                }
                
                Group {
                    Spacer().frame(height: 26)
                    
                    Button {
                        print("Language")
                    } label : {
                        Text("LANGUAGE").frame(maxWidth: .infinity)
                            .padding(10)
                            .foregroundColor(.gray)
                            .background(Color(UIColor.systemGray6))
                            .overlay(
                                Capsule()
                                    .stroke(Color(UIColor.systemGray), lineWidth: 1)
                            )
                    }.clipShape(Capsule())
                        .disabled(true)
                    
                    Picker(selection: $picker_value) {
                        Text("Spanish").tag(0)
                        Text("English").tag(1)
                        Text("Italian").tag(2)
                    } label : {
                        Text("English")
                    }
                    
                    Spacer().frame(height: 130)
                }
                
                Button {
                    print("Log out")
                } label : {
                    HStack(content: {
                        Image(systemName: "exclamationmark.circle")
                        Text("LOG OUT").bold()
                        
                    }).foregroundColor(.purple)
                    
                }.frame (maxWidth: .infinity)
                    .padding()
                    .border(Color.purple)
                    .padding(16)
            }
            .padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
