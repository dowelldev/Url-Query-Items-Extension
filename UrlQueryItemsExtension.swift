//
//  UrlQueryItemsExtension.swift
//

import Foundation

extension URL
{
    var queryItems: [String: String]?
    {
        guard let components = URLComponents.init(url: self, resolvingAgainstBaseURL: false),
            let items = components.queryItems
            else { return nil }
        
        var results = [String: String]()
        for item in items
        {
            results[item.name] = item.value ?? ""
        }
        return results
    }
}
