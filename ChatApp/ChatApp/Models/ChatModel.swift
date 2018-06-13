//
//  ChatModel.swift
//  ChatApp
//
//  Created by Raja on 13/06/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import Foundation

struct Chat:Codable {
    
    var id = String()
    var timeStamp = Int64()
    struct sentBy:Codable {
        var phoneNumber = String()
        var message = String()
    }
    
    struct sentTo:Codable {
        var phoneNumber = String()
        var message = String()
    }
    
}
