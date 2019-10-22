// MARK: - Mocks generated from file: NavigationControllerExample/Services/MyService.swift at 2019-10-21 05:11:52 +0000

//
//  MyService.swift
//  NavigationControllerExample
//
//  Created by Mark S. Manalo on 10/20/19.
//  Copyright © 2019 Mark Manalo. All rights reserved.
//

import Cuckoo
@testable import NavigationControllerExample

import Foundation


 class MockMyService: MyService, Cuckoo.ClassMock {
    
     typealias MocksType = MyService
    
     typealias Stubbing = __StubbingProxy_MyService
     typealias Verification = __VerificationProxy_MyService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: MyService?

     func enableDefaultImplementation(_ stub: MyService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func helloWorld() -> String {
        
    return cuckoo_manager.call("helloWorld() -> String",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.helloWorld()
                ,
            defaultCall: __defaultImplStub!.helloWorld())
        
    }
    

	 struct __StubbingProxy_MyService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func helloWorld() -> Cuckoo.ClassStubFunction<(), String> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMyService.self, method: "helloWorld() -> String", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_MyService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func helloWorld() -> Cuckoo.__DoNotUse<(), String> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("helloWorld() -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class MyServiceStub: MyService {
    

    

    
     override func helloWorld() -> String  {
        return DefaultValueRegistry.defaultValue(for: (String).self)
    }
    
}

