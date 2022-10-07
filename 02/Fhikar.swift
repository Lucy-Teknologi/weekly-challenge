//
//  ContentView.swift
//  Chalenge
//
//  Created by Lucy on 07/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var value: String = ""
    @State var multiple: String = ""
    @State var result: String = "[?]"
    
    var body: some View {
        Section{
            VStack{
                Form {
                    TextField("Width", text: $value)
                    TextField("Multiple", text: $multiple)
                    Text("Result: \(result)")
                }
                
                
                
                Button(action: {
                    
                   result =  calculate(
                        value: Int(value) ?? 0,
                        multiple: Int(multiple) ?? 0
                    )
                }){
                    Text("Calculate!")
                }
            }
        }
    }
}

extension ContentView{
    
     func calculate(value: Int, multiple: Int) -> String{
        
        var temp: [Int] = [Int]()
        var final: [Int] = [Int]()
        
        for i in 0..<(value+1) {
            if(i % multiple == 0 ){
                
                temp.append(i)
            }
        }
        
        let single: Int = (temp.sorted(by: >).first ?? 0)
        
        if(single != value){
            final.append(single+multiple)
            final.append(single)
        }else{
            final.append(single)
        }
        
        return "\(final)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            value: "20",
            multiple: "8"
        )
    }
}
