//
//  Items.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 25/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
import ObjectMapper

public class Item: Mappable {
    public var id : Int?
    public var name : String?
    public var fullName : String?
    public var owner : Owner?
    public var isPrivate : String?
    public var htmlUrl : String?
    public var description : String?
    public var fork : String?
    public var url : String?
    public var stargazersCount : Int?
    public var language : String?
    public var masterBranch : String?
    public var score : Double?
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        fullName <- map["full_name"]
        owner <- map["owner"]
        isPrivate <- map["private"]
        htmlUrl <- map["html_url"]
        description <- map["description"]
        fork <- map["fork"]
        url <- map["url"]
        language <- map["languaje"]
        stargazersCount <- map["stargazers_count"]
        masterBranch <- map["master_branch"]
        score <- map["score"]
    }
    
}
