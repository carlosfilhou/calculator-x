import SwiftUI

// ESSA VIEW É APENAS PARA TESTES!

struct testView2: View {
    var body: some View {
        ZStack {
            Color(red: 0, green: 0.2, blue: 0.5)
                .edgesIgnoringSafeArea(.all)
            ZStack(alignment: .top) {
                Color.purple
                    .cornerRadius(10)
                    .shadow(radius: 5)
                VStack() {
                    Group() {
                        Color.red
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .frame(width: 330, height: 150)
                            .padding(9)
                            .padding([.leading, .trailing], 5)
                    }
                    ZStack(alignment: .bottom) {
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .frame(width: 330, height: 530)
                            .padding(1)
                            .padding([.leading, .trailing], 5)
                        ZStack(alignment: .top) {
                            Color.yellow.brightness(0.4)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .frame(width: 310, height: 480)
                                .padding(20)
                                .padding([.leading, .trailing], 5)
                            VStack() {
                                ZStack() {
                                    Color.green
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                        .frame(width: 290, height: 160)
                                        .padding(30)
                                    HStack() {
                                        Text("T")
                                            .font(.system(size: 75))
                                            .foregroundColor(.white)
                                            .shadow(radius: 1)
                                            .bold()
                                            .padding(20)
                                        Rectangle()
                                            .frame(width: 10, height: 120)
                                            .foregroundColor(.gray)
                                        Text("Controle Image")
                                            .padding(10)
                                    }
                                }
                                Rectangle()
                                    .frame(width: 260, height: 12)
                                    .foregroundColor(.gray)
                                    .padding(-20)
                                Image("butterfly")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 300, height: 260)
                                    .padding(-20)
                            }
                        }
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    testView2()
}
