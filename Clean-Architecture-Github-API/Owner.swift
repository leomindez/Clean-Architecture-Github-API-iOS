//
//  Owner.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 25/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
import ObjectMapper

public class Owner : Mappable{

    public var login : String?
    public var id : Int?
    public var avatarUrl : String?
    public var gravatarId : String?
    public var url : String?
    

    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        login <- map["login"]
        id <- map["id"]
        avatarUrl <- map["avatar_url"]
        gravatarId <- map["gravatar_id"]
        url <- map["url"]
    }
}
