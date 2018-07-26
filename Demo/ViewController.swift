//
//  ViewController.swift
//  Demo
//
/*
 MIT License
 
 Copyright (c) 2017 Shoaib Sarwar Cheema
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: SHView!
    @IBOutlet weak var purpleView: SHView!
    @IBOutlet weak var blueView: SHView!
    @IBOutlet weak var pinkView: SHView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hideOrange(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.orangeView.gone = true
            self.view.layoutIfNeeded()
        }
        
    }
    
    @IBAction func hidePurple(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.purpleView.gone = true
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func hideBlue(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.blueView.gone = true
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func hidePink(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.pinkView.gone = true
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func showAll(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.orangeView.gone = false
            self.purpleView.gone = false
            self.blueView.gone = false
            self.pinkView.gone = false
            self.view.layoutIfNeeded()
        }
    }
    
}

