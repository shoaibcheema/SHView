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

class SHView: UIView {
    
    fileprivate var isGone = false
    fileprivate var heightBeforeGone : CGFloat = 0
    fileprivate var topBeforeGone : CGFloat = 0
    
    //implimented in processing of notification
    var gone:Bool {
        
        set(gone){
            if gone == isGone {
                return
            }
            endEditing(true)
            if gone && !isGone{
                heightBeforeGone = height
                height = 0
                //                possition from top
                topBeforeGone = top
                top = 0
            }
            else if !gone{
                height = heightBeforeGone
                top = topBeforeGone
            }
            isGone = gone
            
            self.updateConstraintsIfNeeded()
            self.isHidden = gone
        }
        get {
            return isGone
        }
        
    }
    
    fileprivate var constraintBased = false
    
    var top: CGFloat {
        set(value) {
            if let constraints = superview?.constraints {
                for constraint in constraints {
                    
                    if (constraint.firstAttribute == .top && constraint.firstItem as! NSObject == self) || (constraint.secondAttribute == .top && constraint.secondItem as! NSObject == self) {
                        constraint.constant = value;
                        
                        return
                    }
                }
            }
        }
        get {
            if let constraints = superview?.constraints {
                for constraint in constraints {
                    
                    if (constraint.firstAttribute == .top && constraint.firstItem as! NSObject == self) || (constraint.secondAttribute == .top && constraint.secondItem as! NSObject == self) {
                        
                        //                if constraint.firstAttribute == .top {
                        return constraint.constant
                    }
                }
            }
            
            return 0
        }
    }
    
    var height:CGFloat {
        
        set(value){
            let constraints = self.constraints
            
            for constraint in constraints {
                
                if constraint.firstAttribute == .height {
                    constraint.constant = value;
                    
                    return
                }
            }
            
            self.translatesAutoresizingMaskIntoConstraints = false
            
            var views: [String: AnyObject] = [:]
            views["field"] = self
            
            let constVH = NSLayoutConstraint.constraints(withVisualFormat: "V:[field(\(value))]", options: [], metrics: nil, views: views)
            
            self.addConstraints(constVH)
        }
        get {
            let constraints = self.constraints
            
            for constraint in constraints {
                
                if constraint.firstAttribute == .height {
                    return constraint.constant
                }
            }
            return 0
        }
        
    }
}
