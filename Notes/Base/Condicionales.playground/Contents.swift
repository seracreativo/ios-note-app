// MARK: - Nota
var note = 3

// MARK: - Condiciones simple
if note <= 2 {
    print("Examen incorrecto")
} else if note > 2 && note <= 5 {
    print("Examen correcto")
} else if note > 5 {
    print("Error en el sistema")
}

// MARK: - Condiciones en base: si fue eximido
let eximido = true
if eximido || note >= 3 {
    print("Examen correcto")
} else {
    print("Examen incorrecto")
}

// MARK: - Condiciones en base: presentó el examen
let presento = false
if (presento && (eximido || note >= 3)) {
    print("Examen correcto")
} else {
    print("No presentó")
}

// MARK: - Condiciones simple
var note2 = 10
if (note2 >= 0 && note2 < 2) {
    print("Nota Baja")
} else if (note2 >= 2 && note2 < 5) {
    print("Nota Media")
} else if note2 == 5 {
    print("Nota Alta")
} else {
    print("Error en el sistema: \(note2)")
}
