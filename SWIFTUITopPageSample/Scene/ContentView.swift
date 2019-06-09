//
//  ContentView.swift
//  SWIFTUITopPageSample
//
//  Created by Takuma Osada on 2019/06/09.
//  Copyright © 2019 Takuma Osada. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let posts: [Post] = [
        .init(id: 1, username: "osataku", date: "April 1st 20:00", text: "東京理科大学にいます", imageName: "office"),
        .init(id: 2, username: "tetchan", date: "April 1st 20:00", text: "フォントをこよなく愛してるんです", imageName: "tree"),
        .init(id: 3, username: "gaku", date: "April 1st 20:00", text: "BLAMに新卒入社が決まりました", imageName: "corner")
        ]
    
    var body: some View {
        NavigationView {
            List {
                VStack(alignment: .leading) {
                    Text("コンテンツ").font(.headline)
                    ScrollView {
                        VStack(alignment: .leading) {
                            HStack {
                                NavigationButton(destination: GroupDetailView()) {
                                    GroupView()
                                }
                                NavigationButton(destination: GroupDetailView()) {
                                    GroupView()
                                }
                                NavigationButton(destination: GroupDetailView()) {
                                    GroupView()
                                }
                            }
                        }
                    }.frame(height: 380)
                }
                
                ForEach(posts.identified(by: \.id)) { post in
                    PostView(post: post)
                }
                
            }.navigationBarTitle(Text("List Title"))
        }
    }
}

struct GroupDetailView: View {
    var body: some View {
        Text("Group Detail")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
