//
//  PostData.swift
//  H4CK3R News
//
//  Created by 程式猿 on 2021/3/17.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
