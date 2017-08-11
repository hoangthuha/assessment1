import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var urlTextField: UITextField!
    
    @IBAction func goButton(_ sender: Any) {
        if let input = urlTextField.text {
            loadUrl(with: input)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.delegate = self
        loadUrl(with: "https://www.google.com")
        
    }
    
    func loadUrl(with string : String){
        
        let urlString = string
        
        guard let url = URL(string: urlString)
            else {
                print("Invalid urlString: \(string)")
                return }
        
        let request = URLRequest(url : url)
        
        webView.loadRequest(request)
        
    }

   

}
