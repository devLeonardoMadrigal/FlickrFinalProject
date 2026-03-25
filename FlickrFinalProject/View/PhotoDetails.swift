//
//  PhotoDetails.swift
//  FlickrFinalProject
//
//  Created by Leonardo Madrigal on 3/25/26.
//

import SwiftUI

struct PhotoDetails: View {
    
    let photo : Photo
    
    
    var body: some View {
        
        let photoWidth = photo.description.firstMatch(of: /width="?(\d+)/)?.output.1
        let photoHeight = photo.description.firstMatch(of: /height="?(\d+)/)?.output.1
        
//        let formatted = Date().formatted(.iso8601)
        
        let dateFormatted = (try? Date(photo.date_taken, strategy: .iso8601))?.formatted(date: .abbreviated, time: .shortened) ?? "No Date"
        
        VStack(alignment: .center){
            
            
            Text("\(photo.title)")
                .font(.title)
            AsyncImage(url: URL(string: photo.media.m)){ image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250,height: 250)
            } placeholder : {
                ProgressView()
                    .frame(width: 250, height:250)
            }

            VStack(alignment:.leading){
                HStack{
                    Text("Real image width: ").bold()
                    Text("\(photoWidth ?? "No data")")

                }
                HStack{
                    Text("Real image height: ").bold()
                    Text(" \(photoHeight ?? "No data")")

                }
                HStack{
                    Text("Author: ").bold()
                    Text("\(photo.author)")

                }
                HStack{
                    Text("Date taken: ").bold()
                    Text("\(dateFormatted)")

                }
            }

           
        }
        
    }
}

#Preview {
    let media:Media = Media(m: "https://live.staticflickr.com/65535/55167275812_e1a2113cdd_m.jpg")
    
    PhotoDetails(
        photo: Photo(
            title: "Title",
            link: "https://www.flickr.com/photos/185042307@N07/55167275812/",
            media: media,
            date_taken: "2026-03-02T08:37:38-08:00",
            description: " u003Cpu003Eu003Ca href=https://www.flickr.com/people/185042307@N07/003Erockisland4506003C/a003E posted a photo:u003C/p003E u003Cu003Eu003Ca href=https://www.flickr.com/photos/185042307@N07/55167275812/ title=BLOL 7561 @ Chatsworth, IL003E003Cimg src=https://live.staticflickr.com/65535/55167275812_e1a2113cdd_m.jpg width=240 height=160 alt=BLOL 7561 @ Chatsworth, IL /003E003C/a003E003C/p003E 003Cp003EIt’s just after sunrise in the small community of Chatsworth, as a southbound Bloomer Line loaded grain train bound for the CN interchange in Gibson City, is viewed breaking the early morning silence while crawling through the heart of town. A 1958 built GP9, BLOL 7591, a 1956 built GP10, BLOL 7561, and a LTEX GP38-2, 3801 are in charge of the morning train.003C/p003E ",
            published: "2026-03-25T18:09:31Z",
            author: "nobody@flickr.com (rockisland4506)",
            author_id: "185042307@N07"
        )
    )
}
