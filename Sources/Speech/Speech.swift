import Foundation
import AVFoundation


@available(macOS 10.14, *)
class SpeechManager {
    private let synthesizer = AVSpeechSynthesizer()
    
    public func play(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        let voice = AVSpeechSynthesisVoice(language: "ja-JP")
        utterance.voice = voice
        self.synthesizer.speak(utterance)
    }
}
