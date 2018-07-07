//
//  ChatModel.swift
//  ChatApp
//
//  Created by Raja on 13/06/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import Foundation

struct Chat: Codable {
    let name: String
    let messages: [Message]
}

struct Message: Codable {
    let timeStamp: Int64
    let text, senderName, senderID: String
    
    enum CodingKeys: String, CodingKey {
        case timeStamp, text, senderName
        case senderID = "senderId"
    }
}

