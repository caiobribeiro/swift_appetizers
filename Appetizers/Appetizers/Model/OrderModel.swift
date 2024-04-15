//
//  Order.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 15/04/24.
//

import Foundation

final class OrderModel: ObservableObject {
    @Published var items: [AppetizerModel] = []

    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }

    func add(_ appetizer: AppetizerModel) {
        items.append(appetizer)
    }

    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
