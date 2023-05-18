//
//  UIComponent.swift
//  Pets
//
//  Created by Marco Alonso Rodriguez on 17/05/23.
//

import Foundation
import SwiftUI

protocol UIComponent {
    var uniqueId: String { get }
    func render() -> AnyView 
}
