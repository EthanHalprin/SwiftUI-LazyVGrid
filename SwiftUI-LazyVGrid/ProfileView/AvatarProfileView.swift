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
        VStack {
         //   Spacer()
            AvatarView(avatar: avatar, width: 285, height: 405)
        //    Spacer()
//            Text(avatar.description)
//                .padding()
          //  Spacer()
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
                .background(Color(red: 0.8, green: 0.1, blue: 0.05))
                .foregroundColor(Color.white)
                .clipShape(Capsule())
            }
           //  Spacer()
        }
    }
}

struct AvatarProfileView_Previews: PreviewProvider {
  static var previews: some View {
      PreviewWrapper()
          .preferredColorScheme(.dark)
  }

  struct PreviewWrapper: View {
      
      @State private var avatar = Avatar(name: "Axeman",
                                          imageName: "man-g7a3631356_1920",
                                          urlString: "https://pixabay.com/illustrations/man-weapons-warrior-figure-fighter-3411299/",
                                          description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

      var body: some View {
          AvatarProfileView(avatar: $avatar)
      }
  }
}
