import SwiftUI

// ESSA VIEW É APENAS PARA TESTES!

struct testView2: View {
    var body: some View {
        ZStack {
            Color.blue
            .edgesIgnoringSafeArea(.all)
            ZStack {
                Color.purple
                ZStack {
                    Color.red
                    Text("texto dentro red")
                }
                .padding()
                .foregroundColor(.black)
            }
            .padding()
        }
    }
}

#Preview {
    testView2()
}
