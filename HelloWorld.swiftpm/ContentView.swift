import SwiftUI

struct Greeting {
    let text: String
    let language: String
}

let greetings: [Greeting] = [
    Greeting(text: "Hello, World!", language: "English"),
    Greeting(text: "Hola, Mundo!", language: "Spanish"),
    Greeting(text: "Bonjour, le Monde !", language: "French"),
    Greeting(text: "नमस्ते, दुनिया!", language: "Hindi"),
    Greeting(text: "こんにちは、世界！", language: "Japanese"),
    Greeting(text: "Hallo, Welt!", language: "German"),
    Greeting(text: "Ciao, Mondo!", language: "Italian"),
    Greeting(text: "Olá, Mundo!", language: "Portuguese")
]

struct ContentView: View {
    @State private var index = 0
    @State private var taps = 0

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            Image(systemName: "globe.americas.fill")
                .font(.system(size: 72))
                .foregroundStyle(.tint)
                .symbolEffect(.bounce, value: taps)

            Text(greetings[index].text)
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .contentTransition(.opacity)

            Text(greetings[index].language.uppercased())
                .font(.caption.weight(.semibold))
                .tracking(1.5)
                .foregroundStyle(.secondary)

            Spacer()

            Button {
                withAnimation(.easeInOut(duration: 0.25)) {
                    index = (index + 1) % greetings.count
                    taps += 1
                }
            } label: {
                Text("Say it another way")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 6)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Text("Tapped \(taps) \(taps == 1 ? "time" : "times")")
                .font(.footnote.monospacedDigit())
                .foregroundStyle(.secondary)
        }
        .padding(24)
    }
}

#Preview {
    ContentView()
}
