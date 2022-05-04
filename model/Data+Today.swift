//
//  Data+Today.swift
//  Today
//
//  Created by Terry on 2022/05/04.
//

import Foundation

extension Date {
    var dayAndTimeText: String {
        let timeText = formatted(date: .omitted, time: .shortened)
        if Locale.current.calendar.isDateInToday(self){
            let timeFormat = NSLocalizedString("Today %@", comment: "Today at time format String")
            return String(format: timeFormat, timeText)
        }else {
            let dateText = formatted(.dateTime.month(.abbreviated).day())
            let dateAndTimeFormat = NSLocalizedString("%@ %@", comment: "Date and time format string ")
            return String(format: dateAndTimeFormat,dateText, timeText)
        }
    }
    
    ///날짜의 형식이 지정되고 지역화된 문자열 표현만 반환하는 명명된 다른 계산 속성을 만든다.
    var dayText: String {
        if Locale.current.calendar.isDateInToday(self) {
            return NSLocalizedString("Today", comment: "Today due date description")
        }else {
            return formatted(.dateTime.month().day().weekday(.wide))
        }
    }
}
