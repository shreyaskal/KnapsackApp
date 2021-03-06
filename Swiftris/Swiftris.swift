//
//  Swiftris.swift
//  Swiftris
//
//  Created by Shreyas Kalyan on 9/18/14.
//  Copyright (c) 2014 Shreyas Kalyan. All rights reserved.
//

import Foundation
let NumColumns = 10
let NumRows = 20

let StartingColumn = 4
let StartingRow = 0

let PreviewColumn = 12
let PreviewRow = 1

protocol SwiftrisDelegate {
    func gameDidEnd(swiftris : Swiftris)
    func gameDidBegin(swiftris : Swiftris)
    func gameShapeDidLand(swiftris : Swiftris)
    func gameShapeDidMove(swiftris : Swiftris)
    func gameShapeDidDrop(swiftris : Swiftris)
    func gameDidLevelUp(swiftris : Swiftris)
}



class Swiftris {
    var blockArray:Array2D<Block>
    var nextShape:Shape?
    var fallingShape:Shape?
    var delegate:SwiftrisDelegate?
    
    init() {
        fallingShape = nil
        nextShape = nil
        blockArray = Array2D<Block>(columns: NumColumns, rows: NumRows)
    }
    
    func beginGame() {
        if (nextShape == nil) {
            nextShape = Shape.random(PreviewColumn, startingRow: PreviewRow)
        }
    }
    
    func newShape() -> (fallingShape:Shape?, nextShape:Shape?) {
        fallingShape = nextShape
        nextShape = Shape.random(PreviewColumn, startingRow: PreviewRow)
        fallingShape?.moveTo(StartingColumn, row: StartingRow)
        return (fallingShape, nextShape)
    }
}