//
//  HttpManager.swift
//  SwiftDemo
//
//  Created by admin on 2019/5/29.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import Alamofire

class HttpManager: NSObject {
 
    class func request(_ type:HTTPMethod,_ url:String, p:[String:Any]?=nil, complete:@escaping (_ result:Any)-> Void){
      
        Alamofire.request(url, method: type, parameters: p).responseJSON{(data) in
            guard let value  = data.result.value else{
                print(data.result.error!)
                return
            }
            complete(value)
        }
    }
  
}
