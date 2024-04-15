//
//  Alert.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 05/04/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

enum AlertContext {
    //    NetWork alerts
    static let invalidData = AlertItem(
        title: Text("Server error"),
        message: Text("The data received from the server was invalid. Please contact support."),
        dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(
        title: Text("Server error"),
        message: Text("Invalid response from the server. Please try again later or contact support."),
        dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(
        title: Text("Server error"),
        message: Text("There was an issue connecting to the server. If this persists, please contact support."),
        dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(
        title: Text("Server error"),
        message: Text("Unable to complete your re"),
        dismissButton: .default(Text("OK")))

    // Account Alerts
    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Please ensure all fields in the form have been filled out."),
        dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(
        title: Text("Invalid email"),
        message: Text("Please ensure your email is correct."),
        dismissButton: .default(Text("OK")))
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile info was successfully saved."),
        dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(
        title: Text("profile Error"),
        message: Text("There was an error saving your profile."),
        dismissButton: .default(Text("OK")))
    static let retrieverDataIssue = AlertItem(
        title: Text("profile Error"),
        message: Text("There was an error retrieving your profile."),
        dismissButton: .default(Text("OK")))
}
