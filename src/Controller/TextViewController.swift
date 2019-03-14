import UIKit

class TextViewController : UIViewController {
    
    override func loadView() {
        
        let textView = UITextView()
        textView.text = "Hello World!\nHello Playground!"
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        toolBar.barTintColor = .white
        toolBar.tintColor = .red
        
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissKeyboard))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil);
        let labelButton = UIBarButtonItem(image: UIImage(named: "bike"), style: .plain, target: self, action: #selector(goToLabelsVC))
        toolBar.isUserInteractionEnabled = true
        toolBar.items = [labelButton, flexibleSpace, doneButton]
        textView.inputAccessoryView = toolBar
        
        self.view = textView
    }
    
    @objc func dismissKeyboard() {
        print("dismiss keyboard")
    }
    
    @objc func goToLabelsVC() {
        print("goToLabelsVC")
    }
    
}
