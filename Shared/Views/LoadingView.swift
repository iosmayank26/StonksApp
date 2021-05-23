//
//  LoadingView.swift
//  Stonks (iOS)
//
//  Created by Mayank Gupta on 23/05/21.
//

import SwiftUI

struct LoadingView: View {
    
    // MARK: - Main View
    var body: some View {
        VStack {
            LottieView(filename: "loading")
                .frame(width: 200, height: 200)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
