//
//  ToastView.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 09/04/24.
//

import SwiftUI

struct AppetizerDetailToast: View {
    @EnvironmentObject var order: OrderModel

    let appetizer: AppetizerModel
    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)

            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()

                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: "\(appetizer.calories)")
                    NutritionInfo(title: "Carbs", value: "\(appetizer.carbs) g")
                    NutritionInfo(title: "Protein", value: "\(appetizer.protein) g")
                }
            }

            Spacer()

            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            }, alignment: .topTrailing
        )
    }
}

struct NutritionInfo: View {
    let title: String
    let value: String

    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)

            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    AppetizerDetailToast(appetizer: MockData.sample01Appetizer, isShowingDetail: .constant(true))
}
