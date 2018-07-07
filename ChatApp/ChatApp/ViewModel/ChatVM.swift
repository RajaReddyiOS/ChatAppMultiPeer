//
//  ChatVM.swift
//  ChatApp
//
//  Created by Raja on 07/07/18.
//  Copyright © 2018 Raja. All rights reserved.
//


import Foundation

class ChatVM {

    static let sharedInstance = ChatVM()
    
    var getData:[Chat]? {
        didSet {
            if getData == nil {
                getData = ChatVM.sharedInstance.getDataFromJson()
            }
        }
    }
    
    init() {
        getData = self.getDataFromJson()
    }
    public func getDataFromJson() -> [Chat]? {
        if let path = Bundle.main.path(forResource: "TestJson", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                
                
                guard let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] else {return nil}
                
                for json in jsonArray {
                    print("json object: ", json)
                }
                
                do {
                    let json = try JSONSerialization.data(withJSONObject: jsonArray)
                    let decodedChat = try JSONDecoder().decode([Chat].self, from: json)
                    decodedChat.forEach{print($0)}
                    
                    return decodedChat
                } catch {
                    print(error)
                }
                
                
            }catch {
                
            }
        }
        
        return nil
    }

}
