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
            VStack (alignment: .trailing, spacing: 15){
                
                Spacer()
                HStack{
                    Text(values)
                        .padding(10)
                        .lineLimit(1)
                        .font(.system(size: CGFloat(80/Int((Double(String(result).count + 10) / 8.0)))))
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .fixedSize(horizontal:true, vertical: false )
                }
                    
                VStack (spacing: 1){
                    HStack (spacing: 15){
                            
                        Button (action: { reset()}){
                            Text("AC")
                                .font(.system(size: 35).bold())
                                .foregroundColor(.black)
                                .frame(width: 90, height: 90)
                                .background(Color.gray)
                                .cornerRadius(200.0)
                        }
                        Button (action: {result = result * -1
                            calculate()
                            operation=6}){
                                Image(systemName: "plus.forwardslash.minus")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                .frame(width: 90, height: 90)
                                .background(Color.gray)
                                .cornerRadius(200.0)
                            }
                        Button (action: { result=result / 100
                            calculate()
                            operation=5}){
                                Image(systemName: "percent")
                                    .font(.system(size: 25))
                                    .foregroundColor(.black)
                                    .frame(width: 90, height: 90)
                                    .background(Color.gray)
                                    .cornerRadius(200.0)
                            }
                        Button (action: { calculate()
                            operation=4}){
                                Image(systemName: "divide")
                                    .foregroundColor(.white)
                                    .font(.title.bold())
                                    .frame(width: 90, height: 90)
                                    .background(Color.orange)
                                    .cornerRadius(200.0)
                            }
                    }.foregroundColor(Color.white)
                }
                HStack (spacing: 15){
                    
                    Button (action: {process(digit: 7)}){
                        Text("7")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                    }
                    Button (action: {process(digit: 8)}){
                        Text("8")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                    }
                    
                    Button (action: {process(digit: 9)}){
                        Text("9")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                        .frame(width: 90, height: 90)
                        .background(Color("Botão1"))
                        .cornerRadius(100)
                    }
                    
                    Button (action: {calculate()
                        operation = 3}){
                            Image(systemName: "multiply")
                                .foregroundColor(.white)
                                .font(.system(size: 35).bold())
                                .frame(width: 90, height: 90)
                                .background(Color.orange)
                                .cornerRadius(400.0)
                        }
                    
                }.foregroundColor(Color.white)
                HStack (spacing: 15){
                    
                    Button (action: {process(digit: 4)}){
                        Text("4")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                    }
                    
                    Button (action: {process(digit: 5)}){
                        Text("5")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                    }
                    
                    Button (action: {process(digit: 6)}){
                        Text("6")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                    }
                    Button (action: {calculate()
                        operation = 2}){
                            Image(systemName: "minus")
                                .frame(width: 90, height: 90)
                                .background(Color.orange)
                                .font(.title.bold())
                                .cornerRadius(200.0)
                        }
                    
                }.foregroundColor(Color.white)
                HStack (spacing: 15){
                    Button (action: {process(digit: 1)}){
                        Text("1")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                    }
                    Button (action: {process(digit: 2)}){
                        Text("2")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                    }
                    Button (action: {process(digit: 3)}){
                        Text("3")
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                    }
                    Button (action: {calculate()
                        operation = 1}){
                            Image(systemName: "plus")
                                .font(.title.bold())
                                .frame(width: 90, height: 90)
                                .background(Color.orange)
                                .cornerRadius(200.0)
                        }
                }.foregroundColor(Color.white)
                
                GeometryReader { geometry in
                    HStack (spacing: 12){
                        Button (action: { process(digit: 0)}){
                            Text("0")
                            Text("          ")
                        }.font(.system(size: 45))
                            .foregroundColor(.white)
                            .frame(width: 185, height: 90)
                            .background(Color("Botão1"))
                            .cornerRadius(100)
                        .frame(minWidth: geometry.size.width/2)
                        
                        Button (action: { if decimal == 0 {
                            decimal = 10.0
                            values = values + "."}}){
                            Text(",")
                                .font(.system(size: 35))
                                .foregroundColor(.white)
                                .frame(width: 90, height: 90)
                                .background(Color("Botão1"))
                                .cornerRadius(100)
                        }
                        Button (action: {calculate()
                            previousOperation=9999
                            operation=9999}){
                                Image(systemName: "equal")
                                .font(.title.bold())
                                .frame(width: 90, height: 90)
                                .background(Color.orange)
                                .cornerRadius(200.0)
                            }
                    }.foregroundColor(Color.white)
                }.frame(maxHeight: 120)
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
