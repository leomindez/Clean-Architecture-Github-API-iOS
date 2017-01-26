//
//  GithubSearchRepositoriesPresenter.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 26/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
import RxSwift

public class GithubSearchRepositoriesPresenter {
    
    private var githubSearchRepositoriesUseCase: GithubSearchRepositoriesUseCase;
    private var githubSearchRepositoriesView: GithubSearchRepositoriesView;
    
    init(githubSearchRepositoriesUseCase:GithubSearchRepositoriesUseCase,githubSearchRepositoriesView:GithubSearchRepositoriesView) {
        self.githubSearchRepositoriesUseCase = githubSearchRepositoriesUseCase;
        self.githubSearchRepositoriesView = githubSearchRepositoriesView
    }
    
    func onSearchGithubRepositories(topic:String) {
        self.githubSearchRepositoriesUseCase.searchGithubRepositores(topic: topic)
        .observeOn(MainScheduler.instance)
            .subscribe(onNext:{ searchResponse in
                self.githubSearchRepositoriesView.onShowGithubRepositores(repositories: searchResponse.items!)
            })
    }
}
