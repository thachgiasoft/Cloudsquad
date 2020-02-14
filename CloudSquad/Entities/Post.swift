//
//  Post.swift
//  CloudSquad
//
//  Created by Alberto Lourenço on 2/13/20.
//  Copyright © 2020 Alberto Lourenço. All rights reserved.
//

import Foundation

struct Post: Codable {
    
    var objectId: Int!
    var text: String!
    var imageURL: String!
    var time: String!
    
    var amountLikes: Int!
    var amountComments: Int!
    
    var author: User!
    var comments: Array<Comment>!
    
    enum CodingKeys: String, CodingKey {
        
        case objectId           = "id"
        case text               = "content"
        case imageURL
        case time
        case amountLikes        = "likes"
        case amountComments     = "comments"
        case comments           = "arrayComments"
        case author
    }
}

extension Post: Identifiable {
    var id: Int { return objectId }
}
