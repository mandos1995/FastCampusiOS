//
//  SearchUserResponse.swift
//  GithubUserSearch
//
//  Created by 김민석 on 2022/10/06.
//

import Foundation

struct SearchUserResponse: Decodable {
    var items: [SearchResult]
}
