//
//  FeedViewModel.swift
//  PhotoApp
//
//  Created by Patrick Alves on 2/7/24.
//

import Foundation
import Combine
import SwiftUI

struct Post {
    var id: UUID = UUID()
    var userImage: Image
    var username: String
    var location: String
    var timePostedSinceNow: String
    var postImageUrl: String
    var commentCount: Int
    var likeCount: Int
}

let postData = [

    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "Mile_f", location: "London, England", timePostedSinceNow: "2 minutes ago", postImageUrl: "lake", commentCount: 3, likeCount: 5),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "Carmern_sandiego", location: "Rio de janeiro, Brazil", timePostedSinceNow: "10 minutes ago", postImageUrl: "show", commentCount: 3, likeCount: 15),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "Lucas_p", location: "Sidney, Australia", timePostedSinceNow: "5 minutes ago", postImageUrl: "trees", commentCount: 10, likeCount: 5),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "Katia_s", location: "São Paulo, Brazil", timePostedSinceNow: "3 minutes ago", postImageUrl: "friends", commentCount: 13, likeCount: 8),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "Marcos_fak", location: "Paris, France", timePostedSinceNow: "1 minutes ago", postImageUrl: "profile", commentCount: 18, likeCount: 5),
 

]


class FeedViewModel: ObservableObject {
    
    @Published var posts: [Post]
    
    var cancellable: AnyCancellable?
    
    init() {
        self.posts = []
    }
    
    func loadPosts() {
        let subject = PassthroughSubject<[Post], Never>()
        cancellable = subject
            .sink(receiveValue: { posts in
                self.posts = posts
            })
        
        subject.send(postData)
    }
       
    
}
