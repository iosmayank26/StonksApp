//
//  CloseButton.swift
//  Stonks
//
//  Created by Mayank Gupta on 22/05/21.
//

import SwiftUI

struct CloseButton: View {
    // MARK: - Main View
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 17,weight: .bold))
            .foregroundColor(.white)
            .padding(.all,10)
            .background(Color.black.opacity(0.6))
            .clipShape(Circle())
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
