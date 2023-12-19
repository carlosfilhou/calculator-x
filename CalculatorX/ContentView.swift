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
    
    @State var previous = 0
    @State var result = 0
    @State var reset = "C"
    @State var operation = 0
    
    @State var previousOperation = 0
    
    func process(digit: Int) {
        if operation > 0 {
            result = 0
            previousOperation = operation
            operation = -1
        }
        result = (result * 10) + digit
    }
    
    func calculate() {
        if previousOperation == 1 { // sum
            result = previous + result
            previousOperation = 0
        }
        previous = result
    }
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            Spacer()
            HStack {
                Text(String(result))
                    .padding()
                    .lineLimit(1)
                    .font(.system(size: CGFloat(80 /
                        Int((Double(String(result).count + 10) / 8.0)))))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .fixedSize(horizontal: true, vertical: false)
                
            }
            
            HStack {
                
                Button(reset) {
                    result = 0
                    previous = 0
                    previousOperation = 0
                    operation = 0
                    reset = "AC"
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
                    reset = "C"
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("8") {
                    process(digit: 8)
                    reset = "C"
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("9") {
                    reset = "C"
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("X") {
                    
                }
                .padding(.vertical, 40)
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(graphiteColor))
            
            HStack {
                Button("4") {
                    reset = "C"
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("5") {
                    reset = "C"
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("6") {
                    reset = "C"
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("-") {
                    
                }
                .padding(.vertical, 40)
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(graphiteColor))
            
            HStack {
                Button("1") {
                    reset = "C"
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("2") {
                    reset = "C"
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("3") {
                    reset = "C"
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
