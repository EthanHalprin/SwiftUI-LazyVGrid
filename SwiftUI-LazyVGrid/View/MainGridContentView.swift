//
//  MainGridContentView.swift
//  SwiftUI-LazyVGrid
//
//  Created by Ethan on 05/10/2021.
//

import SwiftUI

struct MainGridContentView: View {
    
    @StateObject var viewModel = MainGridContentViewModel()
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.avatars, id: \.id) { avatar in
                        AvatarView(avatar: avatar,
                                   width: 90,
                                   height: 90, font: .callout)
                        .onTapGesture {
                            viewModel.selectedAvatar = avatar
                        }
                    }
                }
            }
            .navigationTitle(Text("🤺 Avatars"))
            .sheet(isPresented: $viewModel.isPresentingProfileView) {
                if let selected = viewModel.selectedAvatar {
                    AvatarProfileView(avatar: selected,
                                      isShowing: $viewModel.isPresentingProfileView)
                }
            }
        }
    }
}

struct MainGridContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            MainGridContentView().preferredColorScheme($0)
        }
    }
}
