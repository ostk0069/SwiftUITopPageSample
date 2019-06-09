//
//  ContentView.swift
//  SWIFTUITopPageSample
//
//  Created by Takuma Osada on 2019/06/09.
//  Copyright © 2019 Takuma Osada. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let posts = ["1", "2", "3", "4"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(posts.identified(by: \.self)) { post in
                    PostView()
                }
            }.navigationBarTitle(Text("List Title"))
        }
    }
}

struct PostView: View  {
    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
            HStack {
                Image("clothes")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                    .clipped()
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("Post View").font(.headline)
                    Text("Post Date").font(.subheadline)
                    }.padding(.leading, 8)
                
                }.padding(.leading, 16).padding(.top, 16)
            
            Text("Post body text htat hopefully support auto sizing vertically and span multiple lines").lineLimit(nil).padding(.leading, 16).padding(.trailing, 32)
            Image("office")
            }.padding(.leading, -20)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
