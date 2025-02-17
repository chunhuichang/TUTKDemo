//
//  InfoView.swift
//  TUTKDemo
//
//  Created by Jill Chang on 2025/2/17.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        Text("Version: \(DemoSDK.getVersion())")
    }
}

#Preview {
    InfoView()
}
