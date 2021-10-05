//
//  MainGridContentView.swift
//  SwiftUI-LazyVGrid
//
//  Created by Ethan on 05/10/2021.
//

import SwiftUI

struct MainGridContentView: View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.avatars, id: \.id) { avatar in
                        AvatarView(avatar: avatar, width: 90, height: 90)
                    }
                }
            }
            .navigationTitle(Text("🤺 Avatars"))
        }
    }
}

struct MainGridContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainGridContentView()
            .preferredColorScheme(.dark)
    }
}
