//
//  __PROJECT_NAME__.swift
//  __PROJECT_NAME__
//
//  Created by DB EFA Interns Team on Jun 15, 2022.
//  Copyright © 2022 Deutsche Bank. All rights reserved.
//
import Foundation
import SwiftGraphQL

struct User: Identifiable {
    let id: String
    let name: String
    let email: String
}

public struct EfaClientIOS {
    public let API_URL = "http://localhost:3000/graphql"

    init() {
       
    }
    
    func runquery(then:@escaping (Result<GraphQLResult<[User], Objects.Query>, HttpError>)->()){
        let user = Selection.User {
            User(
                id: try $0.id(),
                name: try $0.name(),
                email: try $0.email()
            )
        }
        
        let query = Selection.Query {
            try $0.allUsers(selection: user.list)
        }
        
        send(query, to: "http://localhost:3000/graphql", onComplete: { result in then(result) })
    }
    
}
