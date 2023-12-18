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

    @State var result = "0"


    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            HStack {
                Text(result)
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            }
            
            HStack {
                Button("AC") {
                    
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
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(darkerColor))
            
            HStack {
                Button("7") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("8") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("9") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("X") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(graphiteColor))
            
            HStack {
                Button("4") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("5") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("6") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("-") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(graphiteColor))
            
            HStack {
                Button("1") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("2") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("3") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                Button("+") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
            }
            .background(Color(graphiteColor))
            
            GeometryReader { geometry in
                HStack {
                    Button("0") {
                        
                    }
                    .padding()
                    .frame(minWidth: geometry.size.width / 2)
                    Button(".") {
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    Button("=") {
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                }
            }
            .frame(maxHeight: 52)
            .background(Color(graphiteColor))
        }
        .background(Color(blackCustomColor))
        .foregroundColor(.white)
    }
    
}

#Preview {
    ContentView()
}
