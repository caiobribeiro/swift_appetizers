//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 05/04/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [AppetizerModel] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail: Bool = false
    @Published var selectedAppetizer: AppetizerModel?

    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers

                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL

                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse

                    case .invalidData:
                        alertItem = AlertContext.invalidData

                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
