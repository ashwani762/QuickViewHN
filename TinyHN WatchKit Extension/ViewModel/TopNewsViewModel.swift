//
//  TopNewsViewModel.swift
//  TinyHN WatchKit Extension
//
//  Created by Ashwani Kumar on 21/03/22.
//

import Foundation

class TopNewsViewModel: ObservableObject {
    
    @Published var items: [Item] = [Item]()
    
    func fetchTopStories() {
        let url = URL(string: "https://hacker-news.firebaseio.com/v0/topstories.json")!
        let request = APIRequest(url: url)
        request.perform { [weak self] (ids: [Int]?) -> Void in
            guard let ids = ids?.prefix(ids?.count ?? 0) else { return }
            for id in ids {
                self?.fetchStory(withID: id) { story in
                    self?.items.append(story!)
                }
            }
        }
    }
    
    func fetchStory(withID id: Int, completion: @escaping (Item?) -> Void) {
        let url = URL(string: "https://hacker-news.firebaseio.com/v0/item/\(id).json")!
        let request = APIRequest(url: url)
        request.perform(with: completion)
    }
}
