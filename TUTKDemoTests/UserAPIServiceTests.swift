//
//  UserAPIServiceTests.swift
//  TUTKDemoTests
//
//  Created by Jill Chang on 2025/2/14.
//

import Testing
@testable import TUTKDemo

struct UserAPIServiceTests {
    @Test
    func fetchUsersSuccess() async throws {
        let sut = makeSUT()
        let result = try await sut.fetchUsers()
        #expect(result.count == 10)
    }
}

// MARK: - Helpers

private extension UserAPIServiceTests {
    func makeSUT() -> UserServiceProtocol {
        UserAPIService()
    }
}
