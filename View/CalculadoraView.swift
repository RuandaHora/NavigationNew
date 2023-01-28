import SwiftUI

struct CalculadoraView: View {
    
    @State var values = "0"
    @State var previous = 0.0
    @State var result = 0.0
    @State var decimal = 0.0
    
    @State var operation = 0
    @State var previousOperation = 0
    func removeZerosFromEnd(value: Double) -> String{
        let f = NumberFormatter()
        let number = NSNumber(value: value)
        f.minimumFractionDigits = 0
        f.maximumFractionDigits = 30
        return f.string(from: number) ?? ""
    }
    func process(digit: Int){
        if operation > 0 {
            result = 0
            previousOperation = operation
            operation = -1
        }
        if decimal > 0.0 {
            result = result + Double(truncating: NSNumber(value: (Double(digit) / decimal)))
            decimal=decimal*10
            values="\(values)\(digit)"
        } else{
            result = (result * 10) + Double(digit)
            values = removeZerosFromEnd(value: result)
        }
    }
        func reset (){
            operation=0
            previousOperation=0
            result=0
            previous=0
            decimal=0
            values="0"
        }
        func calculate() {
            if previousOperation == 1{//Soma
                result = previous + result
                previousOperation = 0
            } else if previousOperation == 2 { //Subtração
                result = previous - result
                previousOperation=0
            }
            else if previousOperation == 3 { //Multiplicação
                result = previous * result
                previousOperation=0
            }
            else if previousOperation == 4 {//Divisão
                result = previous / result
                previousOperation=0
            }
            decimal = 0.0
            previous = result
            values = removeZerosFromEnd(value: result)
        }
        var body: some View {
            VStack (alignment: .trailing, spacing: 1){
                
                Spacer()
                HStack{
                    Text(values)
                        .padding(.vertical, 20)
                        .lineLimit(1)
                        .font(.system(size: CGFloat(80/Int((Double(String(result).count + 10) / 8.0)))))
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .fixedSize(horizontal:true, vertical: false )
                }
                    
                HStack (spacing: 1){
                        
                    Button("AC") {
                            reset()
                        }
                        .padding(.vertical, 40)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray)
                        .cornerRadius(200.0)
                        
                        Button("+/-") {
                            result = result * -1
                            calculate()
                            operation=6
                        }
                        .padding(.vertical, 40)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray)
                        .cornerRadius(200.0)
                    
                        Button("%") {
                            result=result / 100
                            calculate()
                            operation=5
                        }
                        .padding(.vertical, 40)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray)
                        .cornerRadius(200.0)
                        
                    Button("/") {
                            calculate()
                            operation=4
                        }
                        .font(.largeTitle)
                        .padding(.vertical, 30)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(200.0)
                    
                }.foregroundColor(Color.white)
                HStack (spacing: 1){
                    
                    Button("7") {
                        process(digit: 7)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("8") {
                        process(digit: 8)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("9") {
                        process(digit: 9)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("X") {
                        calculate()
                        operation=3
                    }
                    .font(.title2)
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .cornerRadius(400.0)
                    
                }.foregroundColor(Color.white)
                HStack (spacing: 1){
                    
                    Button("4") {
                        process(digit: 4)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("5") {
                        process(digit: 5)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("6") {
                        process(digit: 6)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("-") {
                        calculate()
                        operation=2
                    }
                    .padding(.vertical, 30)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .font(.largeTitle)
                    .cornerRadius(200.0)
                    
                }.foregroundColor(Color.white)
                HStack (spacing: 1){
                    
                    Button("1") {
                        process(digit: 1)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("2") {
                        process(digit: 2)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("3") {
                        process(digit: 3)
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    
                    
                    Button("+") {
                        calculate()
                        operation = 1
                    }
                    .font(.largeTitle)
                    .padding(.vertical, 30)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .cornerRadius(200.0)
                    
                }.foregroundColor(Color.white)
                GeometryReader { geometry in
                    HStack (spacing: 1){
                        
                        Button("0") {
                            process(digit: 0)
                        }
                        .padding(.vertical, 40)
                        .frame(minWidth: geometry.size.width/2)
                        
                        
                        Button(",") {
                            if decimal == 0 {
                                decimal = 10.0
                                values = values + "."
                            }
                        }
                        .padding(.vertical, 40)
                        .frame(maxWidth: .infinity)
                        
                        
                        Button("=") {
                            calculate()
                            previousOperation=9999
                            operation=9999
                        }
                        .font(.largeTitle)
                        .padding(.vertical, 30)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(200.0)
                    
                    }.foregroundColor(Color.white)
                }.frame(maxHeight: 80)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
        }
        
        struct CalculadoraView_Previews: PreviewProvider {
            static var previews: some View {
                CalculadoraView()
            }
        }
    }
