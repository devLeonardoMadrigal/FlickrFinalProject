//
//  PhotosViewModel.swift
//  FlickrFinalProject
//
//  Created by Leonardo Madrigal on 3/25/26.
//

import Foundation
import Combine


enum PhotosListState{
    case loading
    case loaded([Photo])
    case apiError(Error)
    case empty
}


final class PhotosViewModel: ObservableObject {
    
    @Published var viewState: PhotosListState = .loading
    @Published var searchText: String = ""
    private var originalList: [Photo] = []
    

    let networkManager: Networking
    var cancellable = Set<AnyCancellable>()
        
    init(networkManager: Networking) {
        self.networkManager = networkManager
        createSearchTextBinding()
    }
    
    func createSearchTextBinding(){
        $searchText
            .debounce(for: .milliseconds(1000), scheduler: DispatchQueue.main)
            .sink{[weak self] searchWord in
                self?.fetchPhotos(searchText: searchWord)
            }.store(in: &cancellable)
    }
    
    func fetchPhotos(searchText:String = ""){
        viewState = .loading
        networkManager.fetchDataFromAPI(
            urlString: searchText.isEmpty ? Constant.API_URL : Constant.searchTerm_API(searchText: searchText),
            modelType: FlickrResponse.self
        )
            .receive(on: DispatchQueue.main)
            .sink { [weak self] completion in
                switch completion{
                case .finished:
                    print("All tasks are done")
                case .failure(let error):
                    print(error)
                    self?.viewState = .apiError(error)
                }
            } receiveValue: { [weak self] response in
                print(response)
                let photos = response.items
                print(photos)
                self?.viewState = .loaded(photos)
                self?.originalList = photos

            }.store(in: &cancellable)
    }
    
}
