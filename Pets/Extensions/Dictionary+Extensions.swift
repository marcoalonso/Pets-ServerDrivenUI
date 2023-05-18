//
//  Dictionary+Extensions.swift
//  Pets
//
//  Created by Marco Alonso Rodriguez on 17/05/23.
//

import Foundation

extension Dictionary {
    func decode<T: Decodable>() -> T? {
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else { return nil }
        
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
