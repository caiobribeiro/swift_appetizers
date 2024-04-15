//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 05/04/24.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: AppetizerModel

    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .scaledToFit()
                .cornerRadius(8)
                .frame(width: 120, height: 90)

            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)

                Text("R$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding()
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sample01Appetizer)
}
