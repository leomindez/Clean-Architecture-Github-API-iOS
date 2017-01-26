//
//  GithubSearchRepositoriesView.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 26/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
public protocol GithubSearchRepositoriesView {
    func onShowGithubRepositores(repositories: Array<Item>)
    func onShowGithubRepositoresError(error:String)
    
}
