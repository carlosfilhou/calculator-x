import SwiftUI

struct ContentView: View {
    
    let graphiteColor = Color(UIColor(red: 100/255, green: 103/255, blue: 98/255, alpha: 1.0))
    
    let darkerColor = Color(UIColor(red: 60/255, green: 63/255, blue: 58/255, alpha: 1.0))
    
    let blackCustomColor = Color(UIColor(
        red: 20/255,
        green: 21/255,
        blue: 19/255,
        alpha: 1.0
    ))
    
    @State var previous = 0.0
    @State var result = 0.0
    
    @State var operation = 0
    @State var previousOperation = 0
    
    
    func process(digit: Int) {
        if operation > 0 {
            result = 0
            previousOperation = operation
            operation = -1
        }
        result = (result * 10) + Double(digit)
    }
    
    func calculate() {
        if previousOperation == 1 { // sum
            result = previous + result
            previousOperation = 0
        } else if previousOperation == 2 { // sum
            result = previous - result
            previousOperation = 0
        } else if previousOperation == 3 { // sum
            result = previous * result
            previousOperation = 0
        } else if previousOperation == 4 { // sum
            result = previous / result
            previousOperation = 0
        }
        previous = result
    }
    
    func reset() {
        result = 0
        previous = 0
        previousOperation = 0
        operation = 0
    }
    
    func removeZeroFromEnd(value: Double) -> String{
        let f = NumberFormatter()
        let number = NSNumber(value: value)
        f.minimumFractionDigits = 0
        f.maximumFractionDigits = 16
        return f.string(from: number) ?? ""
    }
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            Spacer()
            HStack {
                Text(String(removeZeroFromEnd(value: result)))
                    .padding()
                    .lineLimit(1)
                    .font(.system(size: CGFloat(80 /
                                                Int((Double(String(result).count + 10) / 8.0)))))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .fixedSize(horizontal: true, vertical: false)
            }
            
            HStack() {
                
                Button("AC") {
                    reset()
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("+/-") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("%") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("÷") {
                    calculate()
                    operation = 4
                }
                .font(.title)
                .padding(.vertical, 40)
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(darkerColor))
            
            HStack {
                Button("7") {
                    process(digit: 7)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("8") {
                    process(digit: 8)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("9") {
                    process(digit: 9)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("X") {
                    calculate()
                    operation = 3
                }
                .padding(.vertical, 40)
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(graphiteColor))
            
            HStack {
                Button("4") {
                    process(digit: 4)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("5") {
                    process(digit: 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("6") {
                    process(digit: 6)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("-") {
                    calculate()
                    operation = 2
                }
                .padding(.vertical, 40)
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(graphiteColor))
            
            HStack {
                Button("1") {
                    process(digit: 1)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("2") {
                    process(digit: 2)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("3") {
                    process(digit: 3)
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("+") {
                    calculate()
                    operation = 1
                }
                .padding(.vertical, 40)
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(graphiteColor))
            
            GeometryReader { geometry in
                HStack {
                    Button("0") {
                        result = (result * 10) + 0
                    }
                    .padding()
                    .frame(minWidth: geometry.size.width / 2)
                    Button(".") {
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    Button("=") {
                        calculate()
                        previousOperation = 9999999
                        operation = 9999999
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green)
                }
            }
            .frame(maxHeight: 94)
            .background(Color(graphiteColor))
        }
        .background(Color(blackCustomColor))
        .foregroundColor(.white)
    }
    
}

#Preview {
    ContentView()
}
