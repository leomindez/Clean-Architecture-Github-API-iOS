//
//  GithubSearchRepositoriesUseCase.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 26/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
import RxSwift

class GithubSearchRepositoriesUseCase{
    
    private var githubSearchRepository: GithubSearchRepository
    
    init(githubSearchRepository: GithubSearchRepository) {
        self.githubSearchRepository = githubSearchRepository
    }
    
    func searchGithubRepositores(topic:String) -> Observable<SearchResponse>{
            return githubSearchRepository.searchGithubRepositories(topic: topic)
    }
    
}
