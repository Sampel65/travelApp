//
//  HomeView.swift
//  travelAppUi
//
//  Created by Sampel on 28/09/2022.
//

import SwiftUI

struct HomeView: View {
    @State var isTapped = false
    @State var text = ""
  //  @State var image : [Image]
    
    internal func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        
        let x = proxy.frame(in: .global).minX
        
        let diff = abs(x)
        if diff < 100 {
            scale = 1 + (50 - diff) / 500
        }
        
        return scale
    }
    var body: some View {
    
        ZStack{
            VStack{
                Spacer()
                HStack( spacing: 100){
                    Image(systemName: "line.2.horizontal.decrease.circle.fill")
                    
                    Text("Hi Rakib")
                        .font(.custom("Roboto-Medium", size: 20))
                        .foregroundColor(.teal)
                        
                    
                    Image("man")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                }
                
                Text("Let's travel now")
                    .font(.custom("Roboto-Medium", size: 30))
                    .foregroundColor(Color(hue: 0.636, saturation: 0.979, brightness: 0.37))
                
                
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Search Location", text: $text)
                        .foregroundColor(.black)
                    Image(systemName: "ellipsis.circle.fill")
                        .resizable()
                        .foregroundColor(.teal)
                        .frame(width: 40, height: 40)
                  
                }
                .padding()
                .frame(width: 380, height: 50)
                .background(Color.white)
                .overlay(
                 RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 0.1)
                )
               
                Spacer()
                HStack{
                    
                    Text("Popular Places")
                        .font(.custom("Roboto-Medium", size: 25))
                        .foregroundColor(Color(hue: 0.636, saturation: 0.979, brightness: 0.37))
                        Spacer()
                        
                        Text("See All")
                            .font(.subheadline)
                }
                .padding()

                HStack{
                    ScrollView(.horizontal){
                        HStack(spacing: 50){
                           
                            ForEach(0..<20) { num in
                                GeometryReader{ proxy in
                                    
                                    VStack {
                                    let scale = getScale(proxy: proxy)
                                    
                                    Image("nature1")
                                        .resizable()
                                        .frame(width: 160,height: 250)
                                        .clipped()
                                        .scaledToFill()
                                        .cornerRadius(5)
                                        .scaleEffect(CGSize(width: scale, height: scale))
                                      .onTapGesture {
                                           isTapped.toggle()
                                        }
                                        NavigationLink("", destination: detailView(), isActive: $isTapped)
                                        
                                    Text("Trolltunga Mountain")
                                            .font(.custom("Roboto-Light", size: 10))
                                        HStack{
                                            Image(systemName: "location.north.circle.fill")
                                                .resizable()
                                                .frame(width: 15, height: 15)
                                            Text("Norwy")
                                                .font(.custom("Roboto-Light", size: 10))
                                            Spacer()
                                            
                                            Text("$48/ person")
                                                .font(.custom("Roboto-Medium", size: 10))
                                                .foregroundColor(.teal)
                                        }
                                    }
                                    
                                    }
                                .frame(width: 120, height: 300)
                                
                                
                            
                               
                            }
                        }
                
                        
                        .padding(32)
                        
                      
                    }
                
                }
        
                HStack{
                Text("Top Host's")
                    .font(.custom("Roboto-Medium", size: 25))
                    .foregroundColor(Color(hue: 0.636, saturation: 0.979, brightness: 0.37))
                    
                    Spacer()
                    
                    Text("See All")
                        .font(.subheadline)
                }
                .padding()
                
                HStack(spacing: 25){
                    VStack{
                    Image("3")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        
                        Text("Kenny")
                            .font(.custom("Roboto-Medium", size: 15))
                        
                    }
                    VStack{
                    Image("2")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        
                        Text("Smith")
                            .font(.custom("Roboto-Medium", size: 15))
                    }
                    VStack{
                    Image("4")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        
                        Text("Helen")
                            .font(.custom("Roboto-Medium", size: 15))
                    }
                    VStack{
                    Image("1")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        
                        Text("Kelly")
                            .font(.custom("Roboto-Medium", size: 15))
                    }
                }
            
            }
            Spacer()
        
        }
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
