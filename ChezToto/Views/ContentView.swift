//
//  ContentView.swift
//  ChezToto
//
//  Created by Amandine Cousin on 14/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("chezToto")
                .accessibilityIdentifier("chezTotoImage")
                TitleView()
                    .accessibilityIdentifier("titleView")
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.accent, lineWidth: 2))
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
            }
            InfosView()
                .accessibilityIdentifier("infosView")
                .padding(22)
            Image("plan")
                .accessibilityIdentifier("planImage")
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                Spacer()
                Text("Accéder au menu")
                    .fontWeight(.semibold)
                    .padding()
                Spacer()
            }
            .accessibilityLabel("Accéder au menu")
            .foregroundColor(.white)
            .background(.accent)
            .clipShape( RoundedRectangle(cornerRadius: 10))
            .padding()
        }
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            Text("Chez Toto")
                .accessibilityLabel("Title text")
                .font(.title)
                .fontWeight(.bold)
            Text("Pizzeria")
                .foregroundStyle(.customGray)
                .accessibilityLabel("Pizzeria")
        }
    }
}




#Preview {
    ContentView()
}
