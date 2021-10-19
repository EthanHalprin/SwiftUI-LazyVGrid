//
//  AvatarProfileView.swift
//  SwiftUI-LazyVGrid
//
//  Created by Ethan on 05/10/2021.
//

import SwiftUI

struct AvatarProfileView: View {
    
    var avatar: Avatar
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack(spacing: 40) {
            XButton(isShow: $isShowing)
            AvatarView(avatar: avatar,
                       width: 144,
                       height: 192,
                       font: .title3)
            AvatarDescriptionText(description: avatar.description)
            Spacer()
            AvatarProfileButton()
        }
    }
}

struct XButton: View {
    
    @Binding var isShow: Bool

    var body: some View {
        HStack {
            Spacer()
            Button {
                isShow = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(UIColor.systemRed))
                    .imageScale(.large)
                    .frame(width: 44, height: 4)
            }
        }
        .padding()
    }
}

struct AvatarDescriptionText: View {
    
    var description: String
    
    var body: some View {
        Text(description)
            .padding()
            .font(.callout)
    }
}

struct AvatarProfileButton: View {
    var body: some View {
        Button(action: {
            print("Button action")
        }) {
            HStack {
                Image(systemName: "info.circle")
                Text("More Info")
                    .font(.title3)
                    .fontWeight(.regular)
            }
            .frame(width: 250, height: 35, alignment: .center)
            .padding(10.0)
            .background(Color(UIColor.systemIndigo)) //(Color(red: 0.1, green: 0.1, blue: 0.8))
            .foregroundColor(Color.white)
            .cornerRadius(10.0)
        }
    }
}

struct AvatarProfileView_Previews: PreviewProvider {
  static var previews: some View {
      ForEach(ColorScheme.allCases, id: \.self) {
          PreviewWrapper().preferredColorScheme($0)
      }
  }

  struct PreviewWrapper: View {
      
      @State private var avatar = MockData.sampleAvatar

      var body: some View {
          AvatarProfileView(avatar: avatar, isShowing: .constant(false))
      }
  }
}
