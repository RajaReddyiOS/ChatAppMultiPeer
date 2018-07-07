//
//  ViewController.swift
//  ChatApp
//
//  Created by Raja on 13/06/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView:UITableView!
    
    var dataSet = [Message]()
    
    var channelId = "Channel 2"
    
    fileprivate let myCellId = "myCellId"
    fileprivate let friendCellId = "friendCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let chats = ChatVM.sharedInstance.getData {
            
            for chat in chats {
                dataSet = chat.messages
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Datasources & Delegates
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: myCellId) as! MyCustomCell
        cell.message = dataSet[indexPath.row]
        return cell
    }

    
    
}

