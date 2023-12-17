import SwiftUI

struct ContentView: View {
    
    let graphiteColor = Color(UIColor(red: 120/255, green: 123/255, blue: 118/255, alpha: 1.0))


    var body: some View {
        VStack(spacing: 0) {
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
        }
        .background(Color(graphiteColor))
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
