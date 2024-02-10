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

    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "mile_f", location: "london, England", timePostedSinceNow: "2 minutes ago", postImageUrl: "lake", commentCount: 3, likeCount: 5),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "carmern_sandiego", location: "Rio de janeiro, Brazil", timePostedSinceNow: "10 minutes ago", postImageUrl: "show", commentCount: 3, likeCount: 15),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "lucas_p", location: "Sidiney, Australia", timePostedSinceNow: "5 minutes ago", postImageUrl: "trees", commentCount: 10, likeCount: 5),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "katia_s", location: "Sao paulo, Brazil", timePostedSinceNow: "3 minutes ago", postImageUrl: "friends", commentCount: 13, likeCount: 8),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "mile_fak", location: "Paris, France", timePostedSinceNow: "1 minutes ago", postImageUrl: "profile", commentCount: 18, likeCount: 5),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "mile_f", location: "london, England", timePostedSinceNow: "2 minutes ago", postImageUrl: "lake", commentCount: 3, likeCount: 5),
    Post(userImage:  Image(uiImage: UIImage(imageLiteralResourceName: "profile")), username: "carmern_sandiego", location: "Rio de janeiro, Brazil", timePostedSinceNow: "10 minutes ago", postImageUrl: "show", commentCount: 3, likeCount: 15),

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
