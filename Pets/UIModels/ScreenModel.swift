//
//  ScreenModel.swift
//  Pets
//
//  Created by Marco Alonso Rodriguez on 17/05/23.
//

import Foundation

enum ComponentError: Error {
    case decodingError
}

enum ComponetType: String, Decodable {
    case featuredImage
}

struct ComponentModel: Decodable {
    let type: ComponetType
    let data: [String: String]
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    func buildComponents() throws -> [UIComponent] {
        
        var components: [UIComponent] = []
        
        for component in self.components {
            switch component.type {
            case .featuredImage:
                guard let uiModel: FeaturedImageUIModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                
                components.append(FeaturedImageComponent(uiModel: uiModel))
            }
        }
        
        return components
    }
}

