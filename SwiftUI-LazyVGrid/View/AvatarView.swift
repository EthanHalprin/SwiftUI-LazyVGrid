//
//  AvatarView.swift
//  SwiftUI-Grid
//
//  Created by Ethan on 05/10/2021.
//
import SwiftUI

struct AvatarView: View {
    
    let avatar: Avatar
    
    var body: some View {
        VStack {
            Image(avatar.imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .center)
            Text(avatar.name)
                .font(.body )
                .fontWeight(.regular)
                .scaledToFit()
                .minimumScaleFactor(0.8)
        }
        .padding()
    }
}
