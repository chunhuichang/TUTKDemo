//
//  UserEntity.swift
//  TUTKDemo
//
//  Created by Jill Chang on 2025/2/14.
//

import Foundation

struct UserEntity: Identifiable {
    let id: UUID = .init()
    let name: String
}

extension UserEntity {
    init(from user: UserDTO) {
        self.name = user.name
    }
}
