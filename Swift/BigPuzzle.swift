// NOTA DEL CREADOR: gracias, mis sinceras gracias por probar este nivel, me ha tardado mucho (5 días, aunque parezca poco, para mí es bastante, ya que yo ya sé programar desde los 7 años), si te resulta muy difícil, tranquilo/a, ya que es un nivel de la leche, súper complicado, si te da lag es normal, al terminar de ejecutar el código te dirá que hay un error en el código, pero no le hagas caso, te recomiendo ejecutar el código a máxima velocidad, y cuando veas que está ejecutando tu parte, baja la velocidad. No edites nada de lo que he hecho yo, o te tendré que enviar de nuevo el código, si necesitas restablecer la página, adelante, lo que yo haya hecho no se borrará, pero tendrás que editar las opciones desde el principio, si hay fallos, o alguna otra cosa mándame un mensaje/correo. Sin nada más que decir, aquí me despido.

// en este mundo, las Gemas, interruptores, bloques, y portales, cambian aleatoriamente a otras posiciones, así que eso aumenta la dificultad, tendrás que hacer un código con todo lo que hayas aprendido, pero NO toques lo que no sepas, ya que Gaizka te mataría, este nivel no tiene solución

// edita lo de abajo para personalizar el mundo, si pones "false" se desactivará, si lo pones a "true" se activará, ve al final para solucionar este nivel
let lo_quieres_divertido:Bool = false // añade "cositas" al mundo, ponlo a true si lo quieres, ponlo a false si no quieres
let lo_quieres_mas_dificil:Bool = false // añade gemas, interruptores, bloques, quita bloques, ponlo a true si quieres que añada dificultad
var extra_dificil:Bool = false // hace que todos los portales sean del mismo color, solamente estará disponible si lo_quieres_mas_dificil está en true
let cambiar_colores:Bool = true // si está en "true" cambiará aleatoriamente los colores de los portales, esto no aumentará la dificultad salvo que a tí te sea más difícil



// NO EDITES ESTO
/**
 * Genera el mundo
 */
func mundo() {
    if !lo_quieres_mas_dificil && extra_dificil {
        extra_dificil = false
    }
    func colocarBloquesAvanzado(bucle_se_repite_veces: Int, numero_este: Int, el_numero_es_columna: Bool, resto_numero: Bool, row_or_column: Int) {
        var numeeme = numero_este
        for i in 1 ... bucle_se_repite_veces {
            for o in 1 ... 2 {
                if el_numero_es_columna {
                    world.place(Block(), facing: north, at: Coordinate(column: numeeme, row: row_or_column))
                } else {
                    world.place(Block(), facing: north, at: Coordinate(column: row_or_column, row: numeeme))
                }
            }
            if resto_numero {
                numeeme -= 1
            } else {
                numeeme += 1
            }
        }
    }
    var noSeQue:Int = 0
    var filasQueTenemosQuePoner:Int = 12
    var pongoColumnas:Bool = true
    var columnasQueTengoQuePoner:Int = filasQueTenemosQuePoner
    var longitudDelMundo:Int = 1
    for _ in 1 ... longitudDelMundo {
        for _ in 1 ... filasQueTenemosQuePoner {
            world.place(Block(), facing: north, at: Coordinate(column: filasQueTenemosQuePoner, row: noSeQue))
            noSeQue += 1
        }
        noSeQue = 0
        if pongoColumnas {
            if filasQueTenemosQuePoner != 0 {
                for _ in 1 ... columnasQueTengoQuePoner + 1 {
                    world.place(Block(), facing: north, at: Coordinate(column: noSeQue, row: columnasQueTengoQuePoner))
                    noSeQue += 1
                }
            } else {
                for _ in 1 ... columnasQueTengoQuePoner {
                    world.place(Block(), facing: north, at: Coordinate(column: noSeQue, row: columnasQueTengoQuePoner))
                    noSeQue += 1
                }
            }
        }
    }
    var numero:Int = 0
    for _ in 1 ... 7 {
        for _ in 1 ... 2 {
            world.place(Block(), facing: north, at: Coordinate(column: 1, row: numero))
        }
        numero += 1
    }
    numero = 4
    for _ in 1 ... 2 {
        for _ in 1 ... 2 {
            world.place(Block(), facing: north, at: Coordinate(column: numero, row: 9))
            world.place(Block(), facing: north, at: Coordinate(column: numero, row: 7))
        }
        world.place(Block(), facing: north, at: Coordinate(column: 6, row: 8))
        numero += 1
    } // coordenadas1Vez es para bloques
    var coordenadas1Vez: Array<Coordinate> = [
        Coordinate(column: 0, row: 8),
        Coordinate(column: 2, row: 8),
        Coordinate(column: 3, row: 7),
        Coordinate(column: 1, row: 12),
        Coordinate(column: 3, row: 9),
        Coordinate(column: 2, row: 11),
        Coordinate(column: 2, row: 5),
        Coordinate(column: 4, row: 1),
        Coordinate(column: 3, row: 4),
        Coordinate(column: 5, row: 6),
        Coordinate(column: 5, row: 4),
        Coordinate(column: 5, row: 3),
        Coordinate(column: 4, row: 2),
        Coordinate(column:  2, row: 2)
    ] 
    for i in 0 ... coordenadas1Vez.count-1 {
        for _ in 1 ... 2 {
            world.place(Block(), facing: north, at: coordenadas1Vez[i])
        }
    } // coordenadas3Vez y coordenadas2Vez son para alternar entre interruptores y gemas, pero coordenadas2Vez también alterna entre bloques
    var coordenadas3Vez: [Coordinate] = [
        Coordinate(column: 2, row: 9),
        Coordinate(column: 1, row: 9),
        Coordinate(column: 1, row: 8),
        Coordinate(column: 0, row: 9),
        Coordinate(column: 3, row: 8),
        Coordinate(column: 2, row: 7),
        Coordinate(column: 5, row: 8),
        Coordinate(column: 2, row: 0),
        Coordinate(column: 13, row: 12)
    ]
    var coordenadas2Vez:Array<Coordinate> = [
        Coordinate(column: 2, row: 10),
        Coordinate(column: 0, row: 11),
        Coordinate(column: 2, row: 1)
    ]
    var coordenadas2VezB:Array<Coordinate> = [
        Coordinate(column: 0, row: 12),
        Coordinate(column: 6, row: 6/*OMG*/),
        Coordinate(column: 7, row: 5),
        Coordinate(column: 12, row: 0),
        Coordinate(column: 12, row: 12),
        Coordinate(column: 12, row: 11),
        Coordinate(column: 11, row: 12),
        Coordinate(column: 12, row: 5),
        Coordinate(column: 5, row: 12),
        Coordinate(column: 11, row: 6),
        Coordinate(column: 6, row: 11),
        Coordinate(column: 10, row: 7),
        Coordinate(column: 7, row: 10),
        Coordinate(column: 9, row: 8),
        Coordinate(column: 8, row: 9)
    ]
    /*var quitarBloques = []
     for i in 0 ... quitarBloques.count-1 {
     world.removeAllBlocks(at: quitarBloques[i])
     for o in 1 ... 2 {
     world.place(Block(), facing: north, at: quitarBloques[i])
     }
     } */
    if randomInt(from: 0, to: 1) == 1 { // from 0 to 1
        for i in 0 ... coordenadas2Vez.count-1 {
            for _ in 1 ... 2 {
                world.place(Block(), facing: north, at: coordenadas2Vez[i])
            }
        }
        if randomInt(from: 0, to: 1) == 0 { // from 0 to 1, se supone que está terminado
            if lo_quieres_mas_dificil {
                if randomInt(from: 0, to: 1) == 0 {
                    world.place(Gem(), facing: north, at: Coordinate(column: 3, row: 11))
                } else {
                    world.place(Switch(), facing: north, at: Coordinate(column: 3, row: 11))
                }
            }
            world.place(Gem(), facing: north, at: Coordinate(column: 0, row: 10))
            for i in 0 ... coordenadas3Vez.count-1 {
                world.place(Switch(), facing: north, at: coordenadas3Vez[i])
            }
            numero = 6
            var randomdmd: Int = randomInt(from: 0, to: 1)
            noSeQue = 7
            var blablabla: Int = 4
            for _ in 1 ... 2 {
                world.place(Block(), facing: north, at: Coordinate(column: 5, row: 5))
                world.removeBlock(atColumn: 5, row: 3)
                world.removeBlock(atColumn: 8, row: 2)
                for _ in 1 ... 3 {
                    for _ in 1 ... 2 {
                        world.place(Block(), facing: north, at: Coordinate(column: numero, row: 4))
                        world.place(Block(), facing: north, at: Coordinate(column: numero, row: 2))
                        world.place(Block(), facing: north, at: Coordinate(column: numero, row: 1))
                        world.place(Block(), facing: north, at: Coordinate(column: noSeQue, row: 6))
                        world.place(Block(), facing: north, at: Coordinate(column: noSeQue, row: 8))
                        world.place(Block(), facing: north, at: Coordinate(column: noSeQue, row: 10))
                    }
                    numero += 1
                    noSeQue += 1
                }
                world.removeBlock(atColumn: 12, row: 8)
                for _ in 1 ... 2 {
                    for _ in 1 ... 2 {
                        world.place(Block(), facing: north, at: Coordinate(column: blablabla, row: 11))
                    }
                    blablabla += 1
                }
            }
            blablabla = 9
            for _ in 1 ... 3 {
                for _ in 1 ... 2 {
                    world.place(Block(), facing: north, at: Coordinate(column: blablabla, row: 12))
                }
                blablabla += 1
            }
            if randomdmd == 0 {
                for _ in 1 ... 2 {
                    world.removeBlock(atColumn: 6, row: 1)
                    world.removeBlock(atColumn: 10, row: 1)
                }
                if randomInt(from: 0, to: 1) == 0 {
                    world.place(Gem(), facing: north, at: Coordinate(column: 6, row: 1))
                    world.place(Switch(), facing: north, at: Coordinate(column: 10, row: 1))
                } else {
                    world.place(Switch(), facing: north, at: Coordinate(column: 6, row: 1))
                    world.place(Gem(), facing: north, at: Coordinate(column: 10, row: 1))
                }
            }
        } else {
            numero = 4
            for _ in 1 ... 9 {
                for _ in 1 ... 2 {
                    world.place(Block(), facing: north, at: Coordinate(column: numero, row: 11))
                }
                numero += 1
            }
            numero = 6
            for _ in 1 ... 7 {
                for _ in 1 ... 2 {
                    world.place(Block(), facing: north, at: Coordinate(column: numero, row: 9))
                }
                numero += 1
            }
            var sususu: Int = randomInt(from: 0, to: 1)
            for _ in 1 ... 2 {
                world.removeBlock(atColumn: 7, row: 9)
                if lo_quieres_mas_dificil {
                    if sususu == 0 {
                        world.removeBlock(atColumn: 9, row: 9)
                        world.removeBlock(atColumn: 9, row: 2)
                    } else {
                        world.removeBlock(atColumn: 11, row: 9)
                    }
                }
            }
            numero = 2
            noSeQue = 6
            for _ in 1 ... 7 {
                for _ in 1 ... 2 {
                    world.place(Block(), facing: north, at: Coordinate(column: 10, row: numero))
                    world.place(Block(), facing: north, at: Coordinate(column: noSeQue, row: 0))
                }
                numero += 1
                noSeQue += 1
            }
            numero = 1
            for _ in 1 ... 8 {
                for _ in 1 ... 2 {
                    world.place(Block(), facing: north, at: Coordinate(column: 12, row: numero))
                }
                numero += 1
            }
            numero = 5
            for _ in 1 ... 5 {
                for _ in 1 ... 2 {
                    world.place(Block(), facing: north, at: Coordinate(column: numero, row: 2))
                }
                numero += 1
            }
            noSeQue = 8
            for _ in 1 ... 5 {
                for _ in 1 ... 2 {
                    world.place(Block(), facing: north, at: Coordinate(column:  8, row: noSeQue))
                }
                noSeQue -= 1
            }
            world.place(Switch(), facing: north, at: Coordinate(column: 0, row: 10))
            for i in 0 ... coordenadas3Vez.count-1 {
                world.place(Gem(), facing: north, at: coordenadas3Vez[i])
            }
            if lo_quieres_mas_dificil {
                world.place(Gem(), facing: north, at: Coordinate(column: 12, row: 10))
            }
            if lo_quieres_mas_dificil && world.height(at: Coordinate(column: 9, row: 2)) >= 1 {
                if sususu == 0 || world.height(at: Coordinate(column: 9, row: 2)) >= 1 {
                    world.removeBlock(atColumn: 9, row: 2)
                }
            }
        }
    } else {
        world.place(Block(), facing: north, at: Coordinate(column: 15, row: 12))
        world.place(Block(), facing: north, at: Coordinate(column: 14, row: 12))
        numero = randomInt(from: 0, to: 3)
        func colorroror(color1: Color, color2: Color, color3: Color) -> Void {
            world.place(Portal(color: color1), between: Coordinate(column: 15, row: 12), and: Coordinate(column: 2, row: 12))
            world.place(Portal(color: color2), between: Coordinate(column: 14, row: 12), and: Coordinate(column: 11, row: 11))
            world.place(Portal(color: color3), between: Coordinate(column: 6, row: 7), and: Coordinate(column: 12, row: 6))
        }
        if extra_dificil && lo_quieres_mas_dificil {
            colorroror(color1: #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0), color2: #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0), color3: #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0))
        } else if cambiar_colores == true && numero == 0 {
            colorroror(color1: #colorLiteral(red: 0.0, green: 0.30814847350120544, blue: 0.4059638977050781, alpha: 1.0), color2: #colorLiteral(red: 0.8792176842689514, green: 0.4946202039718628, blue: 0.0, alpha: 1.0), color3: #colorLiteral(red: 0.9960784316062927, green: 0.8941177129745483, blue: 0.658823549747467, alpha: 1.0))
        } else if cambiar_colores == true && numero == 1 {
            colorroror(color1: #colorLiteral(red: 1.0429102182388306, green: 0.7579640746116638, blue: -0.2787611484527588, alpha: 1.0), color2: #colorLiteral(red: 0.5220047831535339, green: 0.08360236138105392, blue: 0.6425490975379944, alpha: 1.0), color3: #colorLiteral(red: 0.9019607305526733, green: 0.23137256503105164, blue: 0.4784314036369324, alpha: 1.0))
        } else if cambiar_colores == true && numero == 2 {
            colorroror(color1: #colorLiteral(red: 0.36576762795448303, green: 0.7420452237129211, blue: 0.12148599326610565, alpha: 1.0), color2: #colorLiteral(red: 0.7098040580749512, green: 0.10196097940206528, blue: -4.8130750940345024e-08, alpha: 1.0), color3: #colorLiteral(red: 0.8745098114013672, green: 0.9333333969116211, blue: 0.8313725590705872, alpha: 1.0))
        } else {
            colorroror(color1: #colorLiteral(red: 0.967509925365448, green: 0.0, blue: 0.0, alpha: 1.0), color2: #colorLiteral(red: 0.35502389073371887, green: 0.23401886224746704, blue: 0.0, alpha: 1.0), color3: #colorLiteral(red: 1.0, green: 0.6939591765403748, blue: 0.6762102246284485, alpha: 1.0))
        }
        var lasCosasSonAsi:Array<Coordinate> = [Coordinate(column: 9, row: 3), Coordinate(column: 9, row: 2), Coordinate(column: 8, row: 2), Coordinate(column: 8, row: 3)]
        var tuPvtaMadrePorEstarLeyendoEsto:Int = randomInt(from: 0, to: 1)
        for i in 0 ... lasCosasSonAsi.count-1 {
            for _ in 1 ... 2 {
                if tuPvtaMadrePorEstarLeyendoEsto == 0 && lo_quieres_mas_dificil {
                    world.place(Gem(), facing: north, at: lasCosasSonAsi[i])
                } else {
                    world.place(Switch(), facing: north, at: lasCosasSonAsi[i])
                }
            }
        }
        for i in 0 ... coordenadas2Vez.count-1 {
            for _ in 1 ... 2 {
                world.place(Block(), facing: north, at: coordenadas2Vez[i])
            }
        }
        for i in 0 ... coordenadas2VezB.count-1 {
            for _ in 1 ... 2 {
                world.place(Block(), facing: north, at: coordenadas2VezB[i])
            }
        }
        var jsjsiwn:Int = 7
        for i in 1 ... 4 {
            for i in 1 ... 2 {
                world.place(Block(), facing: north, at: Coordinate(column: jsjsiwn, row: 4))
                world.removeBlock(atColumn: 10, row: 1)
                world.place(Block(), facing: north, at: Coordinate(column: jsjsiwn, row: 1))
            }
            jsjsiwn += 1
        }
        jsjsiwn = 1
        for _ in 1 ... 3 {
            for _ in 1 ... 2 {
                world.place(Block(), facing: north, at: Coordinate(column: 10, row: jsjsiwn))
            }
            jsjsiwn += 1
        }
        
        if randomInt(from: 0, to: 1) == 0 {
            world.place(Block(), facing: north, at: Coordinate(column: 0, row: 10))
            for i in 0 ... coordenadas3Vez.count-1 {
                world.place(Switch(), facing: north, at: coordenadas3Vez[i])
            }
        } else {
            for _ in 1 ... 2 {
                world.place(Block(), facing: north, at: Coordinate(column: 0, row: 10))
            }
            for i in 0 ... coordenadas3Vez.count-1 {
                world.place(Gem(), facing: north, at: coordenadas3Vez[i])
            }
        }
        if lo_quieres_mas_dificil {
            world.place(Gem(), facing: north, at: Coordinate(column: 6, row: 12))
            if randomBool() {
                world.place(Gem(), facing: north, at: Coordinate(column: 2, row: 12))
            }
        }
    }
    var coordenadas4Vez:Array<Coordinate> = [Coordinate(column: 4, row: 8), Coordinate(column: 1, row: 11), Coordinate(column: 1, row: 10), Coordinate(column: 2, row: 4)]
    numero = randomInt(from: 0, to: 3)
    func coloresHdis(color_1: Int, color_2: Int, color_3: Int, color_4: Int) -> Void {
        if extra_dificil {
            world.place(Portal(color: #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)), between: coordenadas4Vez[color_1], and: coordenadas4Vez[color_2])
            world.place(Portal(color: #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)), between: coordenadas4Vez[color_3], and: coordenadas4Vez[color_4])
        } else if cambiar_colores {
            if numero == 0 {
                world.place(Portal(color: #colorLiteral(red: 0.9019607305526733, green: 0.23137256503105164, blue: 0.4784314036369324, alpha: 1.0)), between: coordenadas4Vez[color_1], and: coordenadas4Vez[color_2])
                world.place(Portal(color: #colorLiteral(red: 0.32156863808631897, green: 0.8392156958580017, blue: 0.9882352352142334, alpha: 1.0)), between: coordenadas4Vez[color_3], and: coordenadas4Vez[color_4])
            } else if numero == 1 {
                world.place(Portal(color: #colorLiteral(red: 0.30980393290519714, green: 0.3333333432674408, blue: 0.01568627543747425, alpha: 1.0)), between: coordenadas4Vez[color_1], and: coordenadas4Vez[color_2])
                world.place(Portal(color: #colorLiteral(red: 0.27843138575553894, green: 0.27843138575553894, blue: 0.27843138575553894, alpha: 1.0)), between: coordenadas4Vez[color_3], and: coordenadas4Vez[color_4])
            } else if numero == 2 {
                world.place(Portal(color: #colorLiteral(red: 0.48235297203063965, green: 0.1607843041419983, blue: 0.0, alpha: 1.0)), between: coordenadas4Vez[color_1], and: coordenadas4Vez[color_2])
                world.place(Portal(color: #colorLiteral(red: 0.23529410362243652, green: 0.027450982481241226, blue: 0.10588234663009644, alpha: 1.0)), between: coordenadas4Vez[color_3], and: coordenadas4Vez[color_4])
            } else {
                world.place(Portal(color: #colorLiteral(red: 1.0, green: 0.6705882549285889, blue: 0.003921568859368563, alpha: 1.0)), between: coordenadas4Vez[color_1], and: coordenadas4Vez[color_2])
                world.place(Portal(color: #colorLiteral(red: 0.06666666269302368, green: 0.019607843831181526, blue: 0.23137256503105164, alpha: 1.0)), between: coordenadas4Vez[color_3], and: coordenadas4Vez[color_4])
            }
        } else {
            world.place(Portal(color: #colorLiteral(red: 0.0, green: 0.5490196347236633, blue: 0.7058823704719543, alpha: 1.0)), between: coordenadas4Vez[color_1], and: coordenadas4Vez[color_2])
            world.place(Portal(color: #colorLiteral(red: 0.30588236451148987, green: 0.4784314036369324, blue: 0.15294116735458374, alpha: 1.0)), between: coordenadas4Vez[color_3], and: coordenadas4Vez[color_4])
        }
    }
    var random:Int = randomInt(from: 0, to: 2)
    if random == 0 {
        coloresHdis(color_1: 0, color_2: 1, color_3: 2, color_4: 3)
    } else if random == 1 {
        coloresHdis(color_1: 3, color_2: 0, color_3: 1, color_4: 2)
    } else {
        coloresHdis(color_1: 2, color_2: 0, color_3: 1, color_4: 3)
    }
    world.place(Block(), facing: north, at: Coordinate(column: 13, row: 12))
}
let character = Character()
world.place(character, facing: north, at: Coordinate(column: 0, row: 0))
/*var isBlocked:Bool = character.isBlocked
var isOnGem:Bool = character.isOnGem
var isBlockedLeft:Bool = character.isBlockedLeft
var isBlockedRight:Bool = character.isBlockedRight
var isOnClosedSwitch:Bool = character.isOnClosedSwitch
var isOnOpenSwitch:Bool = character.isOnOpenSwitch*/
func moveForward() -> Void {
    if lo_quieres_divertido && character.isBlocked {
        character.moveForward()
        if randomBool() {
            character.argh()
        } else {
            character.grumbleGrumble()
        }
    } else {
        character.moveForward()
    }
}
func collectGem() -> Void {
    if lo_quieres_divertido && character.isOnGem {
        character.collectGem()
        if randomBool() {
            character.danceLikeNoOneIsWatching()
        } else {
            character.turnUp()
        }
    } else {
        character.collectGem()
    }
}
func toggleSwitch() -> Void {
    character.toggleSwitch()
    if lo_quieres_divertido && character.isOnOpenSwitch {
        if randomBool() {
            character.danceLikeNoOneIsWatching()
        } else {
            character.turnUp()
        }
    }
}
/**
 * Hace que tu personaje gire a la derecha
 */
func turnRight() -> Void {
    character.turnRight()
}
/**
 * Hace que tu personaje gire a la izquierda
 */
func turnLeft() -> Void {
    character.turnLeft()
}
mundo()






// escribe aquí abajo tu código 
func all() {
    if character.isBlocked {
        if character.isBlockedLeft {
            turnRight()
        } else if character.isBlockedRight {
            turnLeft()
        }
        if character.isOnGem {
            collectGem()
        } else if character.isOnClosedSwitch {
            toggleSwitch()
        }
    } else if !character.isBlocked {
        if character.isOnGem {
            collectGem()
        } else if character.isOnClosedSwitch {
            toggleSwitch()
        }
        moveForward()
    }
}

while !character.isBlocked {
    all()
}
all()
turnLeft()
all()
