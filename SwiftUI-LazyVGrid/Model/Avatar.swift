//
//  Avatar.swift
//  SwiftUI-LazyVGrid
//
//  Created by Ethan on 05/10/2021.
//

import Foundation

struct Avatar: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
