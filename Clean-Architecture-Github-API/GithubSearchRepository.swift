//
//  GithubSearchRepository.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 25/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
import RxSwift

public protocol GithubSearchRepository{
    func searchGithubRepositories(topic:String) -> Observable<SearchResponse>
}
