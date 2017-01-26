//
//  SearchResponse.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 25/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
import ObjectMapper

public class SearchResponse : Mappable {
    public var totalCount : Int?
    public var items : Array<Item>?
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        totalCount <- map["total_count"]
        items <- map["items"]
    }
}
