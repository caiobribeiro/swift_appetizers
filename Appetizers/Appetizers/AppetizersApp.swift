//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 05/04/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = OrderModel()
    
    var body: some Scene {
        WindowGroup {
            AppetizersTabView().environmentObject(order)
        }
    }
}
