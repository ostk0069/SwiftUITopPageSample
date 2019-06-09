//
//  GroupView.swift
//  SWIFTUITopPageSample
//
//  Created by Takuma Osada on 2019/06/09.
//  Copyright © 2019 Takuma Osada. All rights reserved.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("office")
                .renderingMode(.original)
                .cornerRadius(8)
            
            Text("cell1")
                .lineLimit(nil)
                .padding(.leading, 0)
            
            }.frame(width: 110, height: 170)
    }
}
