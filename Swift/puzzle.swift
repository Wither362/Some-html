// Código compartido
// El código escrito en este archivo está disponible en todas las páginas de este libro de áreas de juegos.

public var funnyMode = true
var numberRows: Int = 10
var numberColumns:Int = 10
var minRows: Int = 0
var minColumns: Int = 0
public var world = GridWorld(columns: numberRows, rows: numberColumns)
var allPossibleCoordinates:[Coordinate] = world.allPossibleCoordinates
var pushedInitialBlocks:Bool = false
let character = Character()
var worldIsGenerated:Bool = false

/**
 mueve el personaje hacia delante
 */
public func moveForward() {
    character.moveForward()
}
public func turnRight() {
    character.turnRight()
}
public func turnLeft() {
    character.turnLeft()
}
func grumbleOrFunny() {
    switch randomInt(from: 0, to: 1) {
    case 0:
        character.grumbleGrumble()
    default:
        character.argh()
    }
}

public func collectGem() {
    var funny = false
    if character.isOnGem && funnyMode {
        funny = true
    }
    character.collectGem()
    if funny {
        grumbleOrFunny()
    }
}
public func toggleSwitch() {
    character.toggleSwitch()
    if funnyMode {
        if !character.isOnOpenSwitch && !character.isOnClosedSwitch {
            grumbleOrFunny()
        }
    }
}
/**
 inicia el nivel
 
 **SOLO DEBE USARSE UNA VEZ**
 */
public func generateWorld() {
    if worldIsGenerated {
        print("No jodas más y deja de usar esta función")
        return
    }
    
    placeBlock(at: Coordinate(column: 10, row: 0))
    constructLayer()
    constructEntireColumn(start: Coordinate(column: 1, row: 1), length: 10)
    constructEntireRow(start: Coordinate(column: 1, row: 1), length: 10, exclude: [Coordinate(column: 5, row: 1)])
    
    worldIsGenerated = true
}
func placeAllGems(exclude: [Coordinate] = []) {
    placeItemAll(item: Gem(), exclude: exclude)
}
func placeAllSwitch(exclude: [Coordinate] = []) {
    placeItemAll(item: Switch(), exclude: exclude)
}
func placeItemAll(item: Item, exclude: [Coordinate] = []) {
    var placed: [Coordinate] = []
    for coordinate in allPossibleCoordinates {
        if !exclude.contains(coordinate)
            && !placed.contains(coordinate)
        {
            place(item: item, at: coordinate)
            placed.append(coordinate)
        }
    }
}

func place(item: Item, at: Coordinate) {
    world.place(item, at: at)
}
func placeBlock(at: Coordinate) {
    place(item: Block(), at: at)
    allPossibleCoordinates.append(at)
    if numberColumns - 1 < at.column {
        numberColumns = at.column + 1
    }
    if numberRows - 1 < at.row {
        numberRows = at.row + 1
    }
}
func getMinColumn(row: Int? = nil) -> Int {
    var daColumn:Int = getMaxRow()
    for coordinate in allPossibleCoordinates {
        if row != nil {
            if coordinate.row != row {
                continue
            }
        }
        if coordinate.column < daColumn {
            daColumn = coordinate.column
        }
    }
    return daColumn
}
func getMinRow(column: Int? = nil) -> Int {
    var daRow:Int = getMaxColumn()
    for coordinate in allPossibleCoordinates {
        if column != nil {
            if column != coordinate.column {
                continue
            }
        }
        if coordinate.row < daRow {
            daRow = coordinate.row
        }
    }
    return daRow
}

func getMaxRow() -> Int {
    return numberRows - 1
}
func getMaxColumn() -> Int {
    return numberColumns - 1
}
func constructCube(
    height: Int = 1,
    start: Coordinate = Coordinate(column: 0, row: 0),
    finish: Coordinate = Coordinate(column: 10, row: 10),
    item:Item = Block(),
    exclude: [Coordinate] = [])
{
    var startRow = start.row
    var finishRow = finish.row
    var startColumn = start.column
    var finishColumn = finish.column
    if startRow > finishRow {
        startRow = finish.row
        finishRow = start.row
    }
    if startColumn > finishColumn {
        startColumn = finish.column
        finishColumn = start.column
    }
    for _ in 1 ... height {
        for row in startRow ... finishRow {
            for column in startColumn ... finishColumn {
                var coordinate = Coordinate(column: column, row: row)
                if !exclude.contains(coordinate) {
                    placeBlock(at: coordinate)
                }
            }
        }
    }
}
func constructEntireColumn(start: Coordinate = Coordinate(column: 0, row: 0), length: Int, exclude: [Coordinate] = []) {
    constructCube(start: start, finish: Coordinate(column: start.column + length - 1, row: start.row), exclude: exclude)
}
func constructEntireRow(start: Coordinate = Coordinate(column: 0, row: 0), length: Int, exclude: [Coordinate] = []) {
    constructCube(start: start, finish: Coordinate(column: start.column, row: start.row + length - 1), exclude: exclude)
}
func constructLayer(exclude: [Coordinate] = []) {
    constructCube(start: Coordinate(column: getMinColumn(), row: getMinRow()), finish: Coordinate(column: getMaxColumn(), row: getMaxRow()), exclude: exclude)
}
