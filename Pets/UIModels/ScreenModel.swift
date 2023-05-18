//
//  ScreenModel.swift
//  Pets
//
//  Created by Marco Alonso Rodriguez on 17/05/23.
//

import Foundation

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

