//
//  OrderView.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 05/04/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: OrderModel

    @StateObject var viewModel = OrderViewModel()

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items, id: \.id) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(PlainListStyle())

                    Button {
                        // isShowingDetail = false
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.vertical, 10)
                }

                if order.items.isEmpty {
                    EmptyState(imageName: "empty_order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Order")
        }
    }
}

#Preview {
    OrderView()
}
