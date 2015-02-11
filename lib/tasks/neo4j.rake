namespace :neo4j do
  task wipe: :environment do
    Neo4j::Session.current.query.match(:n).optional_match('n-[r]-()').delete(:n, :r).exec
  end
end

