//
//  ContentView.swift
//  sum
//
//  Created by Pankaj Kumar on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var value1 = ""
    @State private var value2 = ""

    var body: some View {
        VStack {
//            TextField(
//              "Hint Text",
//              value: $rawInput,
//              formatter: NumberFormatter()
//            ).padding()
            
            
            TextField("Number 1", text: $value1)
                            .keyboardType(.numberPad)
                        
                        TextField("Number 2", text: $value2)
                            .keyboardType(.numberPad)
            var sumValues = Float(value1)! + Float(value2)!
            // var sumValues = (Float(value1) ?? 0) + (Float(value2) ?? 0)

//            int sumValues = value1 +value2;
//
                    Text("sum: \(sumValues)")
                        
                        // I need to have a var or let, so I cannot use something like this:
                        //Text("sum: \((Int(value1) ?? 0) + (Int(value2) ?? 0))")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
