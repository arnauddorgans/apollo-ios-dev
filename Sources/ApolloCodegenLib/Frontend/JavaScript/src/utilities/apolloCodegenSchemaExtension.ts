import { DirectiveDefinitionNode, DocumentNode, Kind, NameNode, StringValueNode } from "graphql";

const directive_apollo_client_ios_localCacheMutation: DirectiveDefinitionNode = {
  kind: Kind.DIRECTIVE_DEFINITION,
  description: stringNode("A directive used by the Apollo iOS client to annotate queries that should be used for local cache mutations instead of standard query operations."),
  name: nameNode("apollo_client_ios_localCacheMutation"),
  repeatable: false,
  locations: [nameNode("QUERY")]
}

function nameNode(name :string): NameNode {
  return {
    kind: Kind.NAME,
    value: name
  }
}

function stringNode(value :string): StringValueNode {
  return {
    kind: Kind.STRING,
    value: value
  }
}

export const apolloCodegenSchemaExtension: DocumentNode = {
  kind: Kind.DOCUMENT,
  definitions: [
    directive_apollo_client_ios_localCacheMutation
  ]
}