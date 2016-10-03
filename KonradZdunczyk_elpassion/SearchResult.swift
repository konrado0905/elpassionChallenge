//
//  SearchResult.swift
//  KonradZdunczyk_elpassion
//
//  Created by Konrad Zdunczyk on 03/10/16.
//  Copyright © 2016 Konrad Zdunczyk. All rights reserved.
//

import Foundation
import ObjectMapper

struct SearchResult<T: Mappable>: Mappable {
    var total_count: Int!
    var incomplete_results: Bool!
    var items: [T]!

    init?(map: Map) { }

    mutating func mapping(map: Map) {
        total_count <- map["total_count"]
        incomplete_results <- map["incomplete_results"]
        items <- map["items"]
    }
}
