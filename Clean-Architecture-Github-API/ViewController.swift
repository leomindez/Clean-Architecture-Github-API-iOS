//
//  ViewController.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 25/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GithubSearchRepositoriesView {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let githubService = GithubService()
        let githubSearchRepository = GithubSearchRepositoryImpl(githubService: githubService)
        
        let githubSearchRepositoresUseCase = GithubSearchRepositoriesUseCase(githubSearchRepository: githubSearchRepository)
        
        let githubSearchRepositoresPresenter = GithubSearchRepositoriesPresenter(githubSearchRepositoriesUseCase:githubSearchRepositoresUseCase,githubSearchRepositoriesView: self)
        
        githubSearchRepositoresPresenter.onSearchGithubRepositories(topic: "android")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func onShowGithubRepositores(repositories: Array<Item>) {
       NSLog(repositories.toJSONString()!)
    }
    
    func onShowGithubRepositoresError(error: String) {
        
    }
    
}

