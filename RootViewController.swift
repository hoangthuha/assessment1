import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet weak var firstInput: UITextField!
    
    @IBOutlet weak var secondInput: UITextField!
    
    @IBOutlet weak var search: UIBarButtonItem!
    
    
    
    var firstNumberUserInput : Int = 0
    var secondNumberUserInput : Int = 0
    
    var resultAddition : Int = 0
    var resultMinus : Int = 0
    var resultMul : Int = 0
    var resutlDiv : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addButton(_ sender: Any) {
        firstNumberUserInput = Int(firstInput.text!)!
        secondNumberUserInput = Int(secondInput.text!)!
        
        resultAddition = firstNumberUserInput + secondNumberUserInput
        
        is999(resultOfCalculation999: resultAddition)
        
        isDevided9(resulutOfCalculation9: resultAddition)
        
        otherResult(resultOfCalculation: resultAddition)
        
        return
    }
    
    @IBAction func minusButton(_ sender: Any) {
        firstNumberUserInput = Int(firstInput.text!)!
        secondNumberUserInput = Int(secondInput.text!)!
        
        resultMinus = firstNumberUserInput - secondNumberUserInput
        
        is999(resultOfCalculation999: resultMinus)
        
        isDevided9(resulutOfCalculation9: resultMinus)
        
        otherResult(resultOfCalculation: resultMinus)
    }
    
    @IBAction func mulButton(_ sender: Any) {
        firstNumberUserInput = Int(firstInput.text!)!
        secondNumberUserInput = Int(secondInput.text!)!
        
        resultMul = firstNumberUserInput * secondNumberUserInput
        
        
        is999(resultOfCalculation999: resultMul)
        
        isDevided9(resulutOfCalculation9: resultMul)
        
        otherResult(resultOfCalculation: resultMul)
    }
    
    @IBAction func divButton(_ sender: Any) {
        firstNumberUserInput = Int(firstInput.text!)!
        secondNumberUserInput = Int(secondInput.text!)!
        
        if secondNumberUserInput == 0 {
            let alert = UIAlertController(title: "ERROR!!!", message: "", preferredStyle: .alert)
            
            let restart = UIAlertAction(title: "Restart", style: .destructive, handler: { (action) in
                
                self.firstInput.text = ""
                self.secondInput.text = ""
            })
            alert.addAction(restart)
            
            present(alert, animated: true, completion: nil)
        }
        else {
            resutlDiv = firstNumberUserInput / secondNumberUserInput
            is999(resultOfCalculation999: resutlDiv)
            isDevided9(resulutOfCalculation9: resutlDiv)
            print(resutlDiv)
        }
    }
    
    func is999 (resultOfCalculation999 : Int) {
        if resultOfCalculation999 == 999 {
            performSegue(withIdentifier: "start", sender: self)
        }
    }
    
    func isDevided9 (resulutOfCalculation9 : Int) {
        if resulutOfCalculation9 % 9 == 0 && resulutOfCalculation9 != 999 {
            
            let alert = UIAlertController(title: "GENIUS", message: "", preferredStyle: .alert)
            
            let restart = UIAlertAction(title: "Restart", style: .destructive, handler: { (action) in
                
                self.firstInput.text = ""
                self.secondInput.text = ""
            })
            alert.addAction(restart)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    func otherResult (resultOfCalculation : Int){
        if resultOfCalculation != 999 && resultOfCalculation % 9 != 0 {
            print(resultOfCalculation)
        }
    }
}

