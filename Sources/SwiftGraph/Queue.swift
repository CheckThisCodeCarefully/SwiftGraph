//
//  Queue.swift
//  SwiftGraph
//
//  Copyright (c) 2014-2016 David Kopec
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

/// Implements a queue - helper class that uses an array internally.
public class Queue<T: Equatable> {
    private var container: [T] = [T]()
    public var isEmpty: Bool { return container.isEmpty }
    public var count: Int { return container.count }
    public func push(_ thing: T) { container.append(thing) }
    public func pop() -> T { return container.remove(at: 0) }
    public func contains(_ thing: T) -> Bool {
        if container.index(of: thing) != nil {
            return true
        }
        return false
    }
}
