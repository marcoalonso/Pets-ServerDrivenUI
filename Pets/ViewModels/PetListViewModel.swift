//
//  PetListViewModel.swift
//  Pets
//
//  Created by Marco Alonso Rodriguez on 17/05/23.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    private var service : Webservie
    @Published var components: [UIComponent] = []
    
    init(service: Webservie) {
        self.service = service
    }
    
    func load() async {
        do {
         let screenModel = try  await service.load(resource: Constants.Urls.petListing)
            components = try screenModel.buildComponents()
        } catch {
            print("Debug: error \(error.localizedDescription)")
        }
    }
}
