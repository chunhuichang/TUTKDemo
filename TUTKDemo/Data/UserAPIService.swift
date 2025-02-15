//
//  UserAPIService.swift
//  TUTKDemo
//
//  Created by Jill Chang on 2025/2/15.
//

import Foundation

struct UserAPIService: UserServiceProtocol {
    func fetchUsers() async throws -> [UserEntity] {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            return []
        }
        let request = URLRequest(url: url)
//        request.setValue("Bearer  XXXXXXXXX", forHTTPHeaderField: "Authorization")

        let (data, response) = try await URLSession.shared.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NSError(domain: "Invalid response", code: 0, userInfo: nil)
        }

        let result = try JSONDecoder().decode([UserDTO].self, from: data)
        return result.map(UserEntity.init)
    }
}
