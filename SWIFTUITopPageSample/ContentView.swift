//
//  ContentView.swift
//  SWIFTUITopPageSample
//
//  Created by Takuma Osada on 2019/06/09.
//  Copyright © 2019 Takuma Osada. All rights reserved.
//

import SwiftUI

struct Post {
    let id: Int
    let username: String
    let date: String
    let text: String
    let imageName: String
}

struct ContentView : View {
    
    let posts: [Post] = [
        .init(id: 1, username: "osataku", date: "April 1st 20:00", text: "東京理科大学", imageName: "office"),
        .init(id: 2, username: "tetchan", date: "April 1st 20:00", text: "フォントをこよなく愛してる", imageName: "tree"),
        .init(id: 3, username: "gaku", date: "April 1st 20:00", text: "BLAMに新卒採用が決まりました", imageName: "corner")
        ]
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Trending")
                    HStack {
                        VStack(alignment: .leading) {
                            Image("office")
                            Text("cell1").lineLimit(nil)
                        }.frame(width: 120, height: 180).padding(.leading, 0)
                    }
                }
            }.frame(height: 200)
            
            List {
                ForEach(posts.identified(by: \.id)) { post in
                    PostView(post: post)
                }
                
            }.navigationBarTitle(Text("List Title"))
        }
    }
}

struct PostView: View  {
    
    let post: Post
    
    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
            HStack {
                Image(post.imageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                    .clipped()
                
                VStack (alignment: .leading, spacing: 4) {
                    Text(post.username).font(.headline)
                    Text(post.date).font(.subheadline)
                    }.padding(.leading, 8)
                
            }.padding(.leading, 16).padding(.top, 16)
            
            Text(post.text).lineLimit(nil).padding(.leading, 16).padding(.trailing, 32)
            
            Image(post.imageName)
                .scaledToFill()
                .frame(height: 350)
                .clipped()
            
        }.padding(.leading, -20).padding(.bottom, -8).padding(.trailing, -20)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
