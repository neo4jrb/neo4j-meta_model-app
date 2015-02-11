namespace :neo4j do
  task wipe: :environment do
    Neo4j::Session.current.query('MATCH n OPTIONAL MATCH n-[r]-() DELETE n, r').exec
  end
end

