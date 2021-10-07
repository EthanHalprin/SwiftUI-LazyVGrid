//
//  MainGridContentViewModel.swift
//  SwiftUI-LazyVGrid
//
//  Created by Ethan on 07/10/2021.
//

import SwiftUI


final class MainGridContentViewModel: ObservableObject {
    
    var selectedAvatar: Avatar? {
        didSet {
            self.isPresentingProfileView = true
        }
    }
    @Published var isPresentingProfileView = false
    
}
