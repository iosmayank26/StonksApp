//
//  CourseRow.swift
//  Stonks
//
//  Created by Mayank Gupta on 22/05/21.
//

import SwiftUI

struct CourseRow: View {
    var item: CourseRowModel = courseRowModel[0]
    
    // MARK: - Main View
    var body: some View {
        HStack(alignment: .top) {
            Image(item.logo)
                .renderingMode(.template)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.small)
                .background(item.color)
                .clipShape(Circle())
                .foregroundColor(.white)
                
            VStack(alignment: .leading, spacing: 4.0) {
                Text(item.title)
                    .font(.subheadline)
                    .bold()
                Text(item.subtitle)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow()
    }
}
