//
//  PhotosListView.swift
//  FlickrFinalProject
//
//  Created by Leonardo Madrigal on 3/25/26.
//

import SwiftUI

struct PhotosListView: View {
    
    @StateObject var photosViewModel = PhotosViewModel(networkManager: NetworkManager())
    
    @Namespace var animationNamespace
        
    
    var body: some View {
        NavigationStack{
            
            VStack {
                switch photosViewModel.viewState {
                case .loading:
                    ProgressView()
                case .loaded(let photosList):
                    
                    
                    loadList(photos: photosList)

                    
                case .apiError(let error):
                    Text(error.localizedDescription)
                        .accessibilityIdentifier("photo_list_error_text")
                case .empty:
                    EmptyView()
                }
            }
            .searchable(text:
                $photosViewModel.searchText, prompt: "Search")
            .task(){
                photosViewModel.fetchPhotos()
            }
            .refreshable{
                photosViewModel.fetchPhotos()
            }
        }
    }
    @ViewBuilder
    func loadList(photos:[Photo]) -> some View {
        List(photos, id: \.link){ photo in
            NavigationLink {
                PhotoDetails(photo: photo)
                    .navigationTransition(.zoom(sourceID: photo.link, in: animationNamespace))
            } label: {
                PhotoCell(photo: photo)
                    .accessibilityIdentifier("photo_cell_\(photo.link)")
                    .matchedTransitionSource(id: photo.link, in: animationNamespace)
            }
        }.accessibilityIdentifier("photos_list")
    }
}

#Preview {
    PhotosListView()
}
