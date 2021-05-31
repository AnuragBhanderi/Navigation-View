//
//  ContentView.swift
//  NavigationView
//
//  Created by Anurag Bhanderi on 31/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FirstView(text: "Home")
    }
}

struct FirstView: View {
    var text: String
    var body: some View{
        NavigationView {
            VStack{
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                Text("\(text)")
                    .fontWeight(.heavy)
                    .font(.title)
                    .padding()
                NavigationLink(
                    destination: SecondView(text: "Second Page"),
                    label: {
                        Text("Secong Page")
                            .padding()
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
            }
            .navigationTitle("Home Page")
        }
    }
}

struct SecondView: View {
    var text: String
    var body: some View{
        
        VStack{
            Image(systemName: "airplane")
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            Text("\(text)")
                .fontWeight(.heavy)
                .font(.title)
                .padding()
            NavigationLink(
                destination: ThirdView(text: "Third Page"),
                label: {
                    Text("Third Page")
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
        }
        .navigationTitle("Second Page")
    }
}

struct ThirdView: View {
    var text: String
    var body: some View{
        
        VStack{
            Image(systemName: "wifi")
                .resizable()
                .frame(width: 250, height: 200)
                .padding()
            Text("\(text)")
                .fontWeight(.heavy)
                .font(.title)
                .padding()
        }
        .navigationTitle("Third Page")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
