//
//  Wage.swift
//  calculation
//
//  Created by Bibhuranjan Bihari on 19/10/17.
//  Copyright © 2017 Bibhuranjan Bihari. All rights reserved.
//

import Foundation

class Wage
{
    class func getHours (forWage wage : Double ,andPrice price : Double) -> Int
    {
        return Int (ceil(price / wage))
    }
}
