//
//  ListViewModelTests.swift
//  TUTKDemoTests
//
//  Created by Jill Chang on 2025/2/13.
//

import Foundation
import Testing
@testable import TUTKDemo

struct ListViewModelTests {
    @Test
    func fetchSuccess() async throws {
        let sut = makeSUT()

        await sut.fetchProducts()

        #expect(sut.users.count == 5)
    }

    @Test
    func fetchFail() async throws {
        let sut = makeSUT(shouldReturnError: true)

        await sut.fetchProducts()

        #expect(sut.users.isEmpty)
        #expect(sut.errorMessage != nil)
    }
}

// MARK: - Helpers

private extension ListViewModelTests {
    func makeSUT(shouldReturnError: Bool = false) -> ListViewModel {
        ListViewModel(service: MockUserServiceProtocol(shouldReturnError: shouldReturnError))
    }
}

private struct MockUserServiceProtocol: UserServiceProtocol {
    private let shouldReturnError: Bool

    init(shouldReturnError: Bool) {
        self.shouldReturnError = shouldReturnError
    }

    func fetchUsers() async throws -> [UserEntity] {
        if shouldReturnError {
            throw URLError(.badServerResponse)
        }

        return [
            UserEntity(name: "Leanne Graham"),
            UserEntity(name: "Ervin Howell"),
            UserEntity(name: "Clementine Bauch"),
            UserEntity(name: "Patricia Lebsack"),
            UserEntity(name: "Chelsey Dietrich"),
        ]
    }
}
