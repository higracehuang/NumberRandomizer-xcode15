import SwiftUI

struct ContentView: View {
  @State private var randomNum: Int?
  
  var body: some View {
    VStack {
      Text(randomNum != nil ? "\(randomNum!)" : "?")
        .font(.system(size: 30))
        .padding()
      Button {
        randomNum = Int.random(in: 1...100)
      } label: {
        Text("Generate Random Number")
          .padding()
          .font(.system(size: 20))
      }
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
