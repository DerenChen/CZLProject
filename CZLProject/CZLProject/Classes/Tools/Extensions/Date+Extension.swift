//
//  Date+Extension.swift
//  CZLProject
//
//  Created by yuzeux on 2020/5/9.
//  Copyright © 2020 strloong. All rights reserved.
//

import Foundation

extension Date {
    
    /// 当前日历
    public var calendar: Calendar {
        return Calendar.current
    }
    
    /// 时代
    public var era: Int {
        return Calendar.current.component(.era, from: self)
    }
    
    /// 季度
    public var quarter: Int {
        let month = Double(Calendar.current.component(.month, from: self))
        let numberOfMonths = Double(Calendar.current.monthSymbols.count)
        let numberOfmothsInQuarter = numberOfMonths / 4
        return Int(ceil(month / numberOfmothsInQuarter))
    }
    
    /// 一年中的第几周
    public var weekOfYear: Int {
        return Calendar.current.component(.weekOfYear, from: self)
    }
    
    /// 一月中的第几周
    public var weekOfMonth: Int {
        return Calendar.current.component(.weekOfMonth, from: self)
    }
    
    /// 年
    public var year: Int {
        get {
            return Calendar.current.component(.year, from: self)
        }
        set {
            guard newValue > 0 else { return }
            let currentYear = Calendar.current.component(.year, from: self)
            let yearsToAdd = newValue - currentYear
            if let date = Calendar.current.date(byAdding: .year, value: yearsToAdd, to: self) {
                self = date
            }
        }
    }
    
    /// 月
    public var month: Int {
        get {
            return Calendar.current.component(.month, from: self)
        }
        set {
            let allowedRange = Calendar.current.range(of: .month, in: .year, for: self)!
            guard allowedRange.contains(newValue) else { return }
            
            let currentMonth = Calendar.current.component(.month, from: self)
            let monthsToAdd = newValue - currentMonth
            if let date = Calendar.current.date(bySetting: .month, value: monthsToAdd, of: self) {
                self = date
            }
        }
    }
    
    /// 天
    public var day: Int {
        get {
            return Calendar.current.component(.day, from: self)
        }
        set {
            let allowedRange = Calendar.current.range(of: .day, in: .month, for: self)!
            guard allowedRange.contains(newValue) else { return }
            
            let currentDay = Calendar.current.component(.day, from: self)
            let daysToAdd = newValue - currentDay
            if let date = Calendar.current.date(byAdding: .day, value: daysToAdd, to: self) {
                self = date
            }
        }
    }
    
    /// 星期几
    public var weekday: Int {
        return Calendar.current.component(.weekday, from: self)
    }
    
    /// 当前时间的小时
    public var hour: Int {
        get {
            return Calendar.current.component(.hour, from: self)
        }
        set {
            let allowedRange = Calendar.current.range(of: .hour, in: .day, for: self)!
            guard allowedRange.contains(newValue) else { return }
            
            let currentHour = Calendar.current.component(.hour, from: self)
            let hoursToAdd = newValue - currentHour
            if let date = Calendar.current.date(byAdding: .hour, value: hoursToAdd, to: self) {
                self = date
            }
        }
    }
    
    /// 当前时间的分钟
    public var minute: Int {
          get {
              return Calendar.current.component(.minute, from: self)
          }
          set {
              let allowedRange = Calendar.current.range(of: .minute, in: .hour, for: self)!
              guard allowedRange.contains(newValue) else { return }
              
              let currentMinute = Calendar.current.component(.minute, from: self)
              let minuteToAdd = newValue - currentMinute
              if let date = Calendar.current.date(byAdding: .minute, value: minuteToAdd, to: self) {
                  self = date
              }
          }
      }
    
    /// 当前时间的秒
    public var second: Int {
        get {
            return Calendar.current.component(.second, from: self)
        }
        set {
            let allowedRange = Calendar.current.range(of: .second, in: .minute, for: self)!
            guard allowedRange.contains(newValue) else { return }
            
            let currentSecond = Calendar.current.component(.second, from: self)
            let secondToAdd = newValue - currentSecond
            if let date = Calendar.current.date(byAdding: .second, value: secondToAdd, to: self) {
                self = date
            }
        }
    }
    
    /// 纳秒
    public var nanosecond: Int {
        get {
            return Calendar.current.component(.nanosecond, from: self)
        }
        set {
            let allowedRange = Calendar.current.range(of: .nanosecond, in: .second, for: self)!
            guard allowedRange.contains(newValue) else { return }
            
            let currentNanosecond = Calendar.current.component(.nanosecond, from: self)
            let nanosecondToAdd = newValue - currentNanosecond
            if let date = Calendar.current.date(byAdding: .second, value: nanosecondToAdd, to: self) {
                self = date
            }
        }
    }
    
    
    
}
