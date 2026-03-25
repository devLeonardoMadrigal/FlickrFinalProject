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
        
        VStack(alignment: .center){
            
            Text("\(photo.title)")
                .font(.title)
            AsyncImage(url: URL(string: photo.media.m)){ image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200,height: 200)
            } placeholder : {
                ProgressView()
                    .frame(width: 100, height:100)
            }
            
            Text("Product id: \(photo.author_id)")
                .font(.caption)
        }
        
    }
}
