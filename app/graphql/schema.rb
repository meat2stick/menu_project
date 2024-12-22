class Schema < GraphQL::Schema
  query(Types::QueryType)   # Define queries
  mutation(Types::MutationType) # Define mutations
end