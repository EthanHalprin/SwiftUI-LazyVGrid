//
//  AvatarProfileView.swift
//  SwiftUI-LazyVGrid
//
//  Created by Ethan on 05/10/2021.
//

import SwiftUI

struct AvatarProfileView: View {
    
    @Binding var avatar: Avatar
    
    var body: some View {
        VStack(spacing: 40) {
            AvatarView(avatar: avatar, width: 200, height: 200, font: .title3)
            AvatarDescriptionText(description: avatar.description)
            AvatarProfileButton()
        }.ignoresSafeArea()
    }
}

struct AvatarProfileView_Previews: PreviewProvider {
  static var previews: some View {
      PreviewWrapper()
          .preferredColorScheme(.dark)
  }

  struct PreviewWrapper: View {
      
      @State private var avatar = MockData.sampleAvatar

      var body: some View {
          AvatarProfileView(avatar: $avatar)
      }
  }
}

struct AvatarProfileButton: View {
    var body: some View {
        Button(action: /* ("Delete", role: .destructive) */  {
            print("Button action")
        }) {
            HStack {
                Image(systemName: "person.crop.rectangle.stack")
                Text("Avatars Grid")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            .frame(width: 200, height: 30, alignment: .center)
            .padding(10.0)
            .background(Color(red: 0.1, green: 0.1, blue: 0.8))
            .foregroundColor(Color.white)
            .clipShape(Capsule())
        }
    }
}

struct AvatarDescriptionText: View {
    
    var description: String
    
    var body: some View {
        Text(description)
            .padding()
            .font(.body)
    }
}
