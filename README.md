== neo4j-meta_model-app

`neo4j-meta_model-app` is a Rails application with [neo4j-meta_model](http://github.com/neo4jrb/neo4j-meta_model) pre-configured.  It uses Rails 4.2 and thus requires Ruby version 1.9.3 or greater

See the [neo4j-meta_model](http://github.com/neo4jrb/neo4j-meta_model) for information on how to use the management interface

== Usage

Requirements: Ruby, [Bundler](http://bundler.io/), and [Neo4j](http://neo4j.com)

To start using this app:

 * Install [Neo4j](http://neo4j.com)
 * Install Ruby
 * Download the repository
 * `cd` into the directory
 * Run `bundle install`
 * Run `NEO4J_SERVER_URL=http://localhost:7474 rails s`

Replace the `http://localhost:7474` with the URL of your Neo4j server, or just copy/paste directly if you are using the default 7474 port.

