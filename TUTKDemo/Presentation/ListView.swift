//
//  ListView.swift
//  TUTKDemo
//
//  Created by Jill Chang on 2025/2/15.
//

import SwiftUI

struct ListView: View {
    @State private var viewModel = ListViewModel(service: UserAPIService())

    var body: some View {
        ZStack {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .font(.title)
                    .foregroundStyle(.red)
            } else {
                List(viewModel.users) { user in
                    Text(user.name)
                        .font(.title2)
                }
            }
        }
        .task {
            await viewModel.fetchProducts()
        }
    }
}

#Preview {
    ListView()
}
