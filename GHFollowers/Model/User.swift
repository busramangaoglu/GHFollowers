//
//  User.swift
//  GHFollowers
//
//  Created by Büşra Mangaoğlu on 21.07.2026.
//

import Foundation

nonisolated struct User: Codable, Hashable {

    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdaAt: String
}
