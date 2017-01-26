//
//  GithubService.swift
//  Clean-Architecture-Github-API
//
//  Created by leonel Mendez on 26/01/17.
//  Copyright © 2017 leonel Mendez. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

public class GithubService {
    
    func  requestGithubSearchRepositories(topic:String) -> Observable<SearchResponse> {
        let parameters : Parameters = ["q":topic]
        
        return Observable<SearchResponse>.create {  (observer) -> Disposable in
            
            let request = Alamofire.request(GithubClientConstants.BASE_URL + GithubClientConstants.SEARCH_REPOSITORIES_ENDPOINT,parameters:parameters)
                .responseString(completionHandler: { response in
                    
                    if response.result.isSuccess {
                        let searchReponse = SearchResponse(JSONString: response.result.value!)
                        observer.onNext(searchReponse!)
                        observer.onCompleted()
                    }else if let error = response.result.error{
                        observer.onError(error)
                    }
                    
                })
            return Disposables.create(with: {request.cancel()})
        }
    }
}
