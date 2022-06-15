//
//  File.swift
//  
//
//  Created by Wiliam Toader on 15.06.2022.
//

import Foundation

// This file was auto-generated using maticzav/swift-graphql. DO NOT EDIT MANUALLY!
import SwiftGraphQL

// MARK: - Operations

enum Operations {}
extension Objects.Query: GraphQLHttpOperation {
    static var operation: String { "query" }
}

extension Objects.Mutation: GraphQLHttpOperation {
    static var operation: String { "mutation" }
}

// MARK: - Objects

enum Objects {}
extension Objects {
    struct Query {
        let __typename: TypeName = .query
        let user: [String: Objects.User]
        let allUsersMeta: [String: Objects.ListMetadata]
        let allUsers: [String: [Objects.User]]

        enum TypeName: String, Codable {
            case query = "Query"
        }
    }
}

extension Objects.Query: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "user":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "allUsersMeta":
                if let value = try container.decode(Objects.ListMetadata?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "allUsers":
                if let value = try container.decode([Objects.User?]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        user = map["user"]
        allUsersMeta = map["allUsersMeta"]
        allUsers = map["allUsers"]
    }
}

extension Fields where TypeLock == Objects.Query {
    func user<Type>(id: String, selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "User",
            arguments: [Argument(name: "id", type: "ID!", value: id)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.user[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func allUsers<Type>(page: OptionalArgument<Int> = .absent(), perPage: OptionalArgument<Int> = .absent(), sortField: OptionalArgument<String> = .absent(), sortOrder: OptionalArgument<String> = .absent(), filter: OptionalArgument<InputObjects.UserFilter> = .absent(), selection: Selection<Type, [Objects.User]>) throws -> Type {
        let field = GraphQLField.composite(
            name: "allUsers",
            arguments: [Argument(name: "page", type: "Int", value: page), Argument(name: "perPage", type: "Int", value: perPage), Argument(name: "sortField", type: "String", value: sortField), Argument(name: "sortOrder", type: "String", value: sortOrder), Argument(name: "filter", type: "UserFilter", value: filter)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.allUsers[field.alias!]!)
        case .mocking:
            return selection.mock()
        }
    }

    func allUsersMeta<Type>(page: OptionalArgument<Int> = .absent(), perPage: OptionalArgument<Int> = .absent(), filter: OptionalArgument<InputObjects.UserFilter> = .absent(), selection: Selection<Type, Objects.ListMetadata?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "_allUsersMeta",
            arguments: [Argument(name: "page", type: "Int", value: page), Argument(name: "perPage", type: "Int", value: perPage), Argument(name: "filter", type: "UserFilter", value: filter)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.allUsersMeta[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Query<T> = Selection<T, Objects.Query>
}

extension Objects {
    struct User {
        let __typename: TypeName = .user
        let email: [String: String]
        let id: [String: String]
        let name: [String: String]

        enum TypeName: String, Codable {
            case user = "User"
        }
    }
}

extension Objects.User: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "email":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "id":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "name":
                if let value = try container.decode(String?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        email = map["email"]
        id = map["id"]
        name = map["name"]
    }
}

extension Fields where TypeLock == Objects.User {
    func id() throws -> String {
        let field = GraphQLField.leaf(
            name: "id",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func name() throws -> String {
        let field = GraphQLField.leaf(
            name: "name",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.name[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }

    func email() throws -> String {
        let field = GraphQLField.leaf(
            name: "email",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            if let data = data.email[field.alias!] {
                return data
            }
            throw HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias User<T> = Selection<T, Objects.User>
}

extension Objects {
    struct ListMetadata {
        let __typename: TypeName = .listMetadata
        let count: [String: Int]

        enum TypeName: String, Codable {
            case listMetadata = "ListMetadata"
        }
    }
}

extension Objects.ListMetadata: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "count":
                if let value = try container.decode(Int?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        count = map["count"]
    }
}

extension Fields where TypeLock == Objects.ListMetadata {
    func count() throws -> Int? {
        let field = GraphQLField.leaf(
            name: "count",
            arguments: []
        )
        select(field)

        switch response {
        case let .decoding(data):
            return data.count[field.alias!]
        case .mocking:
            return nil
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias ListMetadata<T> = Selection<T, Objects.ListMetadata>
}

extension Objects {
    struct Mutation {
        let __typename: TypeName = .mutation
        let createManyUser: [String: [Objects.User?]]
        let createUser: [String: Objects.User]
        let removeUser: [String: Objects.User]
        let updateUser: [String: Objects.User]

        enum TypeName: String, Codable {
            case mutation = "Mutation"
        }
    }
}

extension Objects.Mutation: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }

            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)

            switch field {
            case "createManyUser":
                if let value = try container.decode([Objects.User?]?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "createUser":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "removeUser":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            case "updateUser":
                if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
                    map.set(key: field, hash: alias, value: value as Any)
                }
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown key \(field)."
                    )
                )
            }
        }

        createManyUser = map["createManyUser"]
        createUser = map["createUser"]
        removeUser = map["removeUser"]
        updateUser = map["updateUser"]
    }
}

extension Fields where TypeLock == Objects.Mutation {
    func createUser<Type>(name: String, email: String, selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createUser",
            arguments: [Argument(name: "name", type: "String!", value: name), Argument(name: "email", type: "String!", value: email)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func createManyUser<Type>(data: OptionalArgument<[OptionalArgument<InputObjects.UserInput>]> = .absent(), selection: Selection<Type, [Objects.User?]?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "createManyUser",
            arguments: [Argument(name: "data", type: "[UserInput]", value: data)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.createManyUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func updateUser<Type>(id: String, name: OptionalArgument<String> = .absent(), email: OptionalArgument<String> = .absent(), selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "updateUser",
            arguments: [Argument(name: "id", type: "ID!", value: id), Argument(name: "name", type: "String", value: name), Argument(name: "email", type: "String", value: email)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.updateUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }

    func removeUser<Type>(id: String, selection: Selection<Type, Objects.User?>) throws -> Type {
        let field = GraphQLField.composite(
            name: "removeUser",
            arguments: [Argument(name: "id", type: "ID!", value: id)],
            selection: selection.selection
        )
        select(field)

        switch response {
        case let .decoding(data):
            return try selection.decode(data: data.removeUser[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}

extension Selection where TypeLock == Never, Type == Never {
    typealias Mutation<T> = Selection<T, Objects.Mutation>
}

// MARK: - Interfaces

enum Interfaces {}

// MARK: - Unions

enum Unions {}

// MARK: - Enums

enum Enums {}

// MARK: - Input Objects

enum InputObjects {}
extension InputObjects {
    struct UserFilter: Encodable, Hashable {
        var q: OptionalArgument<String> = .absent()

        var ids: OptionalArgument<[OptionalArgument<String>]> = .absent()

        var id: OptionalArgument<String> = .absent()

        var name: OptionalArgument<String> = .absent()

        var email: OptionalArgument<String> = .absent()

        var idNeq: OptionalArgument<String> = .absent()

        var nameNeq: OptionalArgument<String> = .absent()

        var emailNeq: OptionalArgument<String> = .absent()

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            if q.hasValue { try container.encode(q, forKey: .q) }
            if ids.hasValue { try container.encode(ids, forKey: .ids) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if email.hasValue { try container.encode(email, forKey: .email) }
            if idNeq.hasValue { try container.encode(idNeq, forKey: .idNeq) }
            if nameNeq.hasValue { try container.encode(nameNeq, forKey: .nameNeq) }
            if emailNeq.hasValue { try container.encode(emailNeq, forKey: .emailNeq) }
        }

        enum CodingKeys: String, CodingKey {
            case q
            case ids
            case id
            case name
            case email
            case idNeq = "id_neq"
            case nameNeq = "name_neq"
            case emailNeq = "email_neq"
        }
    }
}

extension InputObjects {
    struct UserInput: Encodable, Hashable {
        var id: String

        var name: String

        var email: String

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(name, forKey: .name)
            try container.encode(email, forKey: .email)
        }

        enum CodingKeys: String, CodingKey {
            case id
            case name
            case email
        }
    }
}
