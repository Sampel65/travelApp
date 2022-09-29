//
//  detailView.swift
//  travelAppUi
//
//  Created by Sampel on 29/09/2022.
//

import SwiftUI

struct detailView: View {
    var body: some View {
        ScrollView(.vertical){
        ZStack{
            VStack(alignment:.leading){
                HStack{
                    Image(systemName: "chevron.backward.square")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.teal)
                        Spacer()
                    
                    Image(systemName: "arrow.up.square")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.teal)
                    
                    Image(systemName: "heart")
                        .frame(width: 30, height: 30)
                        .shadow(color: .teal, radius: 20, x: 10, y: 10)
                        .foregroundColor(.teal)
                }
                .padding()
                VStack(alignment: .leading, spacing: 10){
                
                Image("hyms")
                    .resizable()
                    .frame(width: 390, height: 200)
                    .cornerRadius(10)
                    .padding()
                    
                    
                HStack(alignment:.top, spacing: 10){
                    VStack{
                Text("Trolltunga Mountain")
                        .font(.custom("Roboto-Medium", size: 20))
                    Text("Hosted By Helen Taylor")
                            .font(.custom("Roboto-Light", size: 13))
                        
                    }
                    
                    
                    Spacer()
                    
                    Image("3")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                }
                .padding()
                }
                
                HStack{
                
                    Image(systemName: "mappin.and.ellipse")
                    Text("Norway")
                        .font(.custom("Roboto-Medium", size: 20))
                        Spacer()
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.9 (2467)")
                        .font(.custom("Roboto-Medium", size: 15))
                     Spacer()
                    
                    Text("$48/")
                        .font(.custom("Roboto-Medium", size: 20))
                        .foregroundColor(.teal)
                    + Text("person")
                        
                }
                
                
                VStack(alignment: .leading){
                    Text("About")
                        .padding()
                        .font(.custom("Roboto-Medium", size: 20))
                    
                    ExpandedText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut laborum", lineLimit: 3)
                        .font(.custom("Roboto-Light", size: 13))
                    
                    
                        .padding(.leading)
                    ScrollView(.horizontal){
                        HStack(spacing: 10){
                        Image("nature1")
                            .resizable()
                            .frame(width: 70, height: 80)
                            .cornerRadius(20)
                            .padding(.leading)
                        Image("nature1")
                            .resizable()
                            .frame(width: 70, height: 80)
                            .cornerRadius(20)
                        Image("nature1")
                            .resizable()
                            .frame(width: 70, height: 80)
                            .cornerRadius(20)
                        Image("nature1")
                            .resizable()
                            .frame(width: 70, height: 80)
                            .cornerRadius(20)
                        Image("nature1")
                            .resizable()
                            .frame(width: 70, height: 80)
                            .cornerRadius(20)
                            .overlay(Text("+28").foregroundColor(.white).font(.custom("Roboto-Medium", size: 30)))
                    }
                    }
                    
                    
                    Image("map")
                        .resizable()
                        .frame(width:400, height: 200, alignment: .trailing)
                        .clipped()
                        .padding(.leading, 15)
                        
                    
                   
                }
                
                Button(action: {}, label: {
                    Text("Book Now")
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.teal)
                        .cornerRadius(20)
                        .padding(.leading, 55)
                })
            }
        }
        }
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView()
    }
}
