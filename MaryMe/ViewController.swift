import UIKit

class ViewController: UIViewController {
    
    let buttonSim = UIButton()
    let buttonNo = UIButton()
    let label = UILabel()
    var randomPosition = [NSLayoutConstraint]()
    
    override func viewWillAppear(_ animated: Bool) {
            self.navigationController?.setNavigationBarHidden(true, animated: false)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(displayP3Red: 108/255.0, green: 57/255.0, blue: 250/255.0, alpha: 0.7)
        
        buttonSim.backgroundColor = UIColor(displayP3Red: 213/255.0, green: 57/255.0, blue: 250/255.0, alpha: 0.7)
        buttonSim.translatesAutoresizingMaskIntoConstraints = false
        buttonSim.setTitle("Yes", for: .normal)
        buttonSim.titleLabel?.font = UIFont(name: "Times New Roman", size: CGFloat(40))
        buttonSim.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        buttonSim.layer.cornerRadius = 8
        
        buttonNo.backgroundColor = UIColor(displayP3Red: 213/255.0, green: 57/255.0, blue: 250/255.0, alpha: 0.7)
        buttonNo.translatesAutoresizingMaskIntoConstraints = false
        buttonNo.setTitle("No", for: .normal)
        buttonNo.titleLabel?.font = UIFont(name: "Times New Roman", size: CGFloat(40))
        buttonNo.addTarget(self, action: #selector(tappedNoButton), for: .touchUpInside)
        buttonNo.layer.cornerRadius = 8
        
        
        label.text = "Marry me?"
        label.textColor = UIColor(displayP3Red: 240/255.0, green: 55/255.0, blue: 213/255.0, alpha: 0.7)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Times New Roman", size: CGFloat(80))
        
        view.addSubview(label)
        view.addSubview(buttonSim)
        view.addSubview(buttonNo)
        
        randomPosition.append(buttonSim.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant:100))
        randomPosition.append(buttonSim.centerYAnchor.constraint(equalTo: view.topAnchor, constant:425))
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            buttonNo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonNo.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            randomPosition[0],
            randomPosition[1]
        ])
    }
    
//    Futura
//    Geeza Pro
//    Hiragino Sans
//    Papyrus
//    Times New Roman
    
    @objc func tappedButton(){
        let randomX = CGFloat.random(in: 20...350)
        let randomY = CGFloat.random(in: 100...700)
        self.randomPosition[0].constant = randomX
        self.randomPosition[1].constant = randomY
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
        
        UIFont.familyNames.forEach({ familyName in
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            print(familyName, fontNames)
        })
    }
    
    @objc func tappedNoButton(){
        let noViewController = NoViewController()
        self.navigationController?.pushViewController(noViewController, animated: false)
    }
    
}
