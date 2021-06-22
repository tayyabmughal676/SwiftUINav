//
//  ContentView.swift
//  SwiftUINav
//
//  Created by Thor on 22/06/2021.
//

import SwiftUI

struct RedOneview: View {
    
    var body: some View {
        NavigationView{
            VStack{
                CircleNumberView(color: .red, number: 1)
                    .navigationTitle("Red One")
                    .offset(y:-60)
                
                NavigationLink(
                    destination: BlueTwoView(color: .blue),
                    label: {
                        Text("Next Screen")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20.0)
                    })
            }
        }
        .accentColor(Color(.label))
    }
}

struct BlueTwoView: View {
    
    var color: Color
    
    var body: some View {
        VStack{
            CircleNumberView(color: color, number: 2)
                .navigationTitle("Blue Two")
                .offset(y:-60)
            
            NavigationLink(
                destination: GreenThreeView(color: .green),
                label: {
                    Text("Next Screen")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20.0)
                })
        }
    }
}

struct GreenThreeView: View {
    
    var color: Color
    
    var body: some View {
        VStack{
            CircleNumberView(color: color, number: 3)
                .navigationTitle("Green Three")
                .offset(y:-60)
            
//            NavigationLink(
//                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
//                label: {
//                    Text("Next Screen")
//                        .bold()
//                        .frame(width: 280, height: 50)
//                        .background(Color.green)
//                        .foregroundColor(.white)
//                        .cornerRadius(20.0)
//                })
        }
    }
}


struct CircleNumberView: View {
    var color: Color
    var number : Int
    
    var body: some View{
        ZStack(){
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneview()
    }
}
