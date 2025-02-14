//
//  ListViewModel.swift
//  TUTKDemo
//
//  Created by Jill Chang on 2025/2/14.
//

import SwiftUI

@Observable
class ListViewModel {
    private let service: UserServiceProtocol

    var users: [UserEntity] = []
    var isLoading = false
    var errorMessage: String?

    init(service: UserServiceProtocol) {
        self.service = service
    }

    func fetchProducts() async {
        isLoading = true
        defer { isLoading = false }

        do {
            let result = try await service.fetchUsers()
            users = result
        } catch {
            errorMessage = "Failed to load: \(error.localizedDescription)"
        }
    }
}
