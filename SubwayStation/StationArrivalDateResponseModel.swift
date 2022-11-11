//
//  StationArrivalDateResponseModel.swift
//  SubwayStation
//
//  Created by 양성혜 on 2022/11/11.
//

import Foundation

struct StationArrivalDateResponseModel: Decodable {
    
    var realtimeArrivalList: [RealTimeArrival] = []
    
    struct RealTimeArrival: Decodable {
        let line : String
        let remainTime : String
        let currentStation: String
        
        enum CoingKeys: String, CodingKey {
            case line = "trainLineNm"
            case remainTime = "arvlMsg2"
            case currentStation = "arvlMsg3"
        }
    }
}
