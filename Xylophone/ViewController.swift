import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(nameSound: sender.currentTitle!)
        
        sender.alpha = 0.5
        print("start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
            print("end")
        }
        
    }
    
    func playSound(nameSound: String) {
        let url = Bundle.main.url(forResource: nameSound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

