//
//  ViewController.swift
//  project-6b
//
//  Created by Denys Denysenko on 18.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        label.text = "THESE"
        label.sizeToFit()
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .cyan
        label1.text = "ARE"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .yellow
        label2.text = "SOME"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .green
        label3.text = "AWESOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .orange
        label4.text = "LABELS"
        label4.sizeToFit()
        
        
        view.addSubview(label)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        
//        let viewDictionary = ["label": label, "label1": label1, "label2": label2, "label3": label3, "label4": label4]
//        for label in viewDictionary.keys {
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewDictionary))
//
//        }
//
//        let metrics = ["labelHeight": 88]
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label(labelHeight@999)]-[label1(label)]-[label2(label)]-[label3(label)]-[label4(label)]-(>=10)-|", options: [], metrics: metrics, views: viewDictionary))
        
        var previous : UILabel?
        
        for lab in [label, label1, label2, label3, label4] {
            
            lab.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            lab.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            if let previous = previous {
                lab.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            }
            else {
                lab.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            previous = lab
        }
        
    }
}

