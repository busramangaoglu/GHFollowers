//
//  GFError.swift
//  GHFollowers
//
//  Created by Büşra Mangaoğlu on 27.07.2026.
//

import Foundation

enum GFError : String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "unable to complate your request. Please check your internet connection"
    case invalidResponse = "invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    
}

