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
            
            Spacer()
            
            AvatarView(avatar: avatar,
                       width: 200,
                       height: 200,
                       font: .title3,
                       textColor: Color.blue)
            
            AvatarDescriptionText(description: avatar.description)
            
            Spacer()

            AvatarProfileButton()
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

struct AvatarProfileButton: View {
    var body: some View {
        Button(action: {
            print("Button action")
        }) {
            HStack {
                Image(systemName: "info.circle")
                Text("MORE")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .frame(width: 250, height: 35, alignment: .center)
            .padding(10.0)
            .background(Color(red: 0.1, green: 0.1, blue: 0.8))
            .foregroundColor(Color.white)
            .cornerRadius(10.0)
        }
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
