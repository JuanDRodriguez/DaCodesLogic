//
//  main.swift
//  DaCodesLogic
//
//  Created by Juan Daniel Rodriguez Perez on 09/12/20.
//

import Foundation
func getDirecction(rows: Int, columns: Int) -> String{
    if rows == columns && rows > 1{
        return (rows % 2 == 0) ? "L":"R"
    }
    else if rows > columns && columns > 1 {
        return (columns % 2 == 0) ? "U":"D"
    }
    else if columns > rows{
        return (rows % 2 == 0) ? "L":"R"
    }else if columns == 1{
        return (rows == 1) ? "R":"D"
    }
    else{
        return ""
    }
}
print("ingresa el numero de casos:")
guard let t = Int(readLine()!)else{fatalError("Solo Numeros")}
for i in 0..<t{
    print("ingresa el valor de M N seperado por un espacio:")
    let mnB = readLine()!
    let mn = mnB.split(separator: " ").map{ String($0)}
    guard let m = Int(mn[0].trimmingCharacters(in: .whitespacesAndNewlines)) else {fatalError("Solo Numeros")}
    guard let n = Int(mn[1].trimmingCharacters(in: .whitespacesAndNewlines)) else {fatalError("Solo Numeros")}
    print(getDirecction(rows: m, columns: n))
}




