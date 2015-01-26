
Rails.application.routes.draw do
  mount Neo4j::MetaModel::Engine => "/"
end
