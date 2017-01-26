//
//  GithubSearchRepositoriesImpl.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 26/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
import RxSwift


class GithubSearchRepositoryImpl: GithubSearchRepository {
    
    private var githubService: GithubService;
    
    init(githubService:GithubService) {
        self.githubService = githubService;
    }
    
    func searchGithubRepositories(topic: String) -> Observable<SearchResponse> {
                return self.githubService.requestGithubSearchRepositories(topic: topic)
    }
}
