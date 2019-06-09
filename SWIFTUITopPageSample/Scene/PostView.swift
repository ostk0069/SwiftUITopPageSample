//
//  PostView.swift
//  SWIFTUITopPageSample
//
//  Created by Takuma Osada on 2019/06/09.
//  Copyright © 2019 Takuma Osada. All rights reserved.
//

import SwiftUI

struct PostView: View {
    
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

