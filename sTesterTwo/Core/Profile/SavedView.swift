//
//  ProfileView.swift
//  sTesterTwo
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct SavedView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView{
                //header
                
                VStack(spacing: 10){
                    HStack{
                        //pic
                        Image("ethan")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                            
                        //stats
                        
                        HStack(spacing: 8){
                            UserStatView(value: 3, title: "Posts")
                            
                            UserStatView(value: 12, title: "Followers")
                            
                            UserStatView(value: 24, title: "Following")
                            
                            
                            }
                        }
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    
                    VStack(alignment: .leading, spacing: 4){
                        //name
                        Text("Miranda")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        //bio
                        Text("I am 18 years old")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    
                    
                    
                    //action button
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    }
                    .padding(.bottom, 15)
                    
                    HStack{
                        
                        NavigationLink(destination: PostedView()){
                            
                            Text("Posted")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 90, height: 32)
                                .foregroundColor(.black)
                            
                        }
                            
                               
                        
                        
                        Text("|")
                        
                        NavigationLink(destination: SavedView()){
                            
                            Text("Saved")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 90, height: 32)
                                .foregroundColor(.black)
                            
                        }
                        
                      
                    }
                    
                    Divider()
                }
                
                //post grid view
                
              
                    
                LazyVGrid(columns: gridItems, spacing: 1){
                        ForEach(0 ... 0, id: \.self){
                            index in
                            Image("one")
                                .resizable()
                                .scaledToFill()
                            
                            Image("two")
                                .resizable()
                                .scaledToFill()
                            
                        }
                    }
                    
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
                
            }
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
