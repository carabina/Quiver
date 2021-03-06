//
//  Validatable.swift
//  Quiver
//
//  Created by Heitor Costa on 14/09/17.
//  Copyright © 2017 Heitor Costa. All rights reserved.
//

/**
 Any object conforming to the Validatable protocol can be validated by calling the **validate()** function. To do so, they must implement the **validations(with:)** to map the keypaths to the desired validators.
 */
public protocol Validatable {
    
    /**
     Called when validators mapping is required. Receives an mapper object to do so.
     
     - parameters:
         - mapper: An object used to map validators to keypaths.
     */
    func validations(with mapper: ValidatorMapper)
}

public extension Validatable {
    
    /**
     Validates the object and returns the results.
     
     - Returns: A ValidatorResult describing the success of the validation or errors occurred.
     */
    public func validate() -> ValidatorResult {
        let engine = ValidatorEngine(mapper: ValidatorMapper(), validatableSubject: self)
        let result = engine.performValidations()
        return result
    }
}
