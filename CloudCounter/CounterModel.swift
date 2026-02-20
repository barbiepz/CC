//
//  CounterModel.swift
//  CloudCounter
//
//  Created by Ms.Thanaporn Ngamsangeim on 17/2/2569 BE.
//
//  test 2

import Foundation
import Combine

final class CounterModel: ObservableObject {

    @Published private(set) var value: Int = 0

    func increment() {
        value += 9
    }

    func decrement() {
        value -= 5
    }

    func reset() {
        value = 0
    }

    func isEven() -> Bool {
        return value % 2 == 0
    }
}
