//
//  DateFormatter+Extension.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import Foundation

extension DateFormatter {

    // 2020-06-04T11:41:52+02:00
    static let dateWithTimeZoneFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "yyyy-MM-dd'T'HH:mm:ssxxx")
    }()
    
    // 2020-02-03 00:00:00
    static let serverFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "yyyy-MM-dd HH:mm:ss")
    }()
    
    // 2020-12-31
    static let moodRequestFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "yyyy-MM-dd")
    }()

    // April 22, May 9
    static let dailyDareFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "MMMM d")
    }()

    // Sunday, 13.12.2020
    static let moodNoteFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "EEEE, dd MMM yyyy")
    }()
    
    // Jan, Feb, Mar e.t.c.
    static let shortMonthFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "LLL")
    }()
    
    // January, February, March e.t.c.
    static let longMonthFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "LLLL")
    }()
    
    // 2020
    static let yearFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "yyyy")
    }()
    
    // Sun, Mon, Tue e.t.c.
    static let dayOfWeekFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "ccc")
    }()
    
    // 01.12
    static let dayWithMonthFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "dd.MM")
    }()
    
    // 23:30 or 11:30 PM
    static func hoursAndMinutesFormatter() -> DateFormatter {
        let format = DateFormatter.is24HoursFormat() ? "H:mm" : "h:mm a"
     
        return DateFormatter().configure(formatString: format)
    }
    
    // 01, 02, 22, 31
    static let dayFormatter: DateFormatter = {
        return DateFormatter().configure(formatString: "dd")
    }()
    
    @discardableResult
    private func configure(formatString: String) -> DateFormatter {
        self.dateFormat = formatString
        self.timeZone = TimeZone.current
        self.locale = Locale.current

        return self
    }
    
    static func is24HoursFormat() -> Bool {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        
        let dateString = formatter.string(from: Date())

        return [formatter.amSymbol, formatter.pmSymbol]
            .compactMap { dateString.range(of: $0)?.isEmpty ?? true }
            .contains(false)
            .toggled()
    }
}
