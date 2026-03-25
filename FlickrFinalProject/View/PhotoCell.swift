//
//  PhotoCell.swift
//  FlickrFinalProject
//
//  Created by Leonardo Madrigal on 3/25/26.
//

import SwiftUI

struct PhotoCell: View {
    let photo : Photo
        
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: photo.media.m)){ image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100)
            } placeholder : {
                ProgressView()
                    .frame(width: 100, height:100)
            }
            VStack(alignment: .leading){
                Text("\(photo.title)")
                    .font(.title)
                    .foregroundStyle(.cyan)
            }
        }
    }
}
