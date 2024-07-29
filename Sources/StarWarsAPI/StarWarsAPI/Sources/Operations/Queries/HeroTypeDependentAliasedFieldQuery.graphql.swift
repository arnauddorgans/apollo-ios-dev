// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class HeroTypeDependentAliasedFieldQuery: GraphQLQuery {
  public static let operationName: String = "HeroTypeDependentAliasedField"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    operationIdentifier: "5b1ed6a84e96a4e48a3cad675ebb46020bce176f47361d097d8a0a824b7b8452",
    definition: .init(
      #"query HeroTypeDependentAliasedField($episode: Episode) { hero(episode: $episode) { __typename ... on Human { __typename property: homePlanet } ... on Droid { __typename property: primaryFunction } } }"#
    ))

  public var episode: GraphQLNullable<GraphQLEnum<Episode>>

  public init(episode: GraphQLNullable<GraphQLEnum<Episode>>) {
    self.episode = episode
  }

  public var __variables: Variables? { ["episode": episode] }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("hero", Hero?.self, arguments: ["episode": .variable("episode")]),
    ] }

    public var hero: Hero? { __data["hero"] }

    public init(
      hero: Hero? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": StarWarsAPI.Objects.Query.typename,
          "hero": hero._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(HeroTypeDependentAliasedFieldQuery.Data.self)
        ]
      ))
    }

    /// Hero
    ///
    /// Parent Type: `Character`
    public struct Hero: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .inlineFragment(AsHuman.self),
        .inlineFragment(AsDroid.self),
      ] }

      public var asHuman: AsHuman? { _asInlineFragment() }
      public var asDroid: AsDroid? { _asInlineFragment() }

      public init(
        __typename: String
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": __typename,
          ],
          fulfilledFragments: [
            ObjectIdentifier(HeroTypeDependentAliasedFieldQuery.Data.Hero.self)
          ]
        ))
      }

      /// Hero.AsHuman
      ///
      /// Parent Type: `Human`
      public struct AsHuman: StarWarsAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = HeroTypeDependentAliasedFieldQuery.Data.Hero
        public static var __parentType: any ApolloAPI.ParentType { StarWarsAPI.Objects.Human }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("homePlanet", alias: "property", String?.self),
        ] }

        /// The home planet of the human, or null if unknown
        public var property: String? { __data["property"] }

        public init(
          property: String? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": StarWarsAPI.Objects.Human.typename,
              "property": property,
            ],
            fulfilledFragments: [
              ObjectIdentifier(HeroTypeDependentAliasedFieldQuery.Data.Hero.self),
              ObjectIdentifier(HeroTypeDependentAliasedFieldQuery.Data.Hero.AsHuman.self)
            ]
          ))
        }
      }

      /// Hero.AsDroid
      ///
      /// Parent Type: `Droid`
      public struct AsDroid: StarWarsAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = HeroTypeDependentAliasedFieldQuery.Data.Hero
        public static var __parentType: any ApolloAPI.ParentType { StarWarsAPI.Objects.Droid }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("primaryFunction", alias: "property", String?.self),
        ] }

        /// This droid's primary function
        public var property: String? { __data["property"] }

        public init(
          property: String? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": StarWarsAPI.Objects.Droid.typename,
              "property": property,
            ],
            fulfilledFragments: [
              ObjectIdentifier(HeroTypeDependentAliasedFieldQuery.Data.Hero.self),
              ObjectIdentifier(HeroTypeDependentAliasedFieldQuery.Data.Hero.AsDroid.self)
            ]
          ))
        }
      }
    }
  }
}
