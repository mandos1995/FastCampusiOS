//
//  SearchViewModel.swift
//  GithubUserSearch
//
//  Created by 김민석 on 2023/01/03.
//

import Foundation
import Combine

final class SearchViewModel {
    
    let network: NetworkService
    
    init(network: NetworkService) {
        self.network = network
    }
    
    let users = CurrentValueSubject<[SearchResult], Never>([])
    var subscriptions = Set<AnyCancellable>()
    
    func search(keyword: String) {
        let resource = Resource<SearchUserResponse>(
            base: "https://api.github.com/",
            path: "search/users",
            params: ["q": keyword],
            header: ["Content-Type": "application/json"])
        
        network.load(resource)
            .map { $0.items }
            .receive(on: RunLoop.main)
            .replaceError(with: [])
            .sink(receiveValue: { result in
                self.users.send(result)
            })
            .store(in: &subscriptions)
    }
    
    
}
