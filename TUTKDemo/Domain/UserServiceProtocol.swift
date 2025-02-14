//
//  UserServiceProtocol.swift
//  TUTKDemo
//
//  Created by Jill Chang on 2025/2/14.
//

import Foundation

protocol UserServiceProtocol {
    func fetchUsers() async throws -> [UserEntity]
}
