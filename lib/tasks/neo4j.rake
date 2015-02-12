namespace :neo4j do
  task wipe: :environment do
    Neo4j::Session.current.query.match(:n).optional_match('n-[r]-()').delete(:n, :r).exec

    Rails.root.join('db/sample.cql').read.split(';').each do |statement|
      Neo4j::Session.current.query(statement)
    end
  end
end

