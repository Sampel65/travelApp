//
//  ContentView.swift
//  travelAppUi
//
//  Created by Sampel on 28/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showWelcomeView = false
    var body: some View {
        
        NavigationView{
        ZStack{
            VStack{
                Spacer()
                Image("app")
                    .resizable()
                    .frame(width: 300, height: 300)
                
                HStack{
                    Text("Let's\nenjoy \nbeautiful \nworld")
                        .foregroundColor(Color(hue: 0.636, saturation: 0.979, brightness: 0.37))
                        .font(.custom("Roboto-Medium", size: 50))
                        .lineSpacing(10)
                        
                    
                    Text("Find a place for\ntravel, campaign,\nhiring, relax and\nchrish your dreams \nto the fullest")
                        .foregroundColor(.gray)
                        .padding(.bottom,150)
                    
                    
                   
            }
                Spacer()
                
                Button(action: {
                    showWelcomeView = true
                }, label: {
                    Text("Get Started")
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.teal)
                        .cornerRadius(20)
                    
                })
                NavigationLink("", destination: HomeView(), isActive: $showWelcomeView).navigationBarHidden(true)
            }
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
