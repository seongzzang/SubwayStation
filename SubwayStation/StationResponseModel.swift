//
//  StationResponseModel.swift
//  SubwayStation
//
//  Created by 양성혜 on 2022/11/10.
//

import Foundation

struct StationResponseModel: Decodable {
    
    var stations: [Station] { searchInfo.row }
    
    let searchInfo: SearchInfoBySubwayNameServiceModel
    
    enum CodibngKeys: String, CodingKey {
        case searchInfo = "SearchInfoBySubwayNameService"
    }
    
    struct SearchInfoBySubwayNameServiceModel: Decodable {
        var row: [Station] = []
    }
}

struct Station: Decodable {
    let stationName: String
    let lineNumber: String
    
    enum CodingKeys: String, CodingKey {
        case stationName = "STATION_NM"
        case lineNumber = "LINE_NUM"
    }
}
