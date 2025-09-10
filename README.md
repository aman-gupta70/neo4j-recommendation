# Neo4j Movie Recommendation Graph

This project demonstrates a simple movie recommendation system using Neo4j AuraDB.

## What it does:
- Stores movies, actors, and genres as graph nodes
- Connects them with relationships like ACTED_IN and BELONGS_TO
- Runs Cypher queries to:
  - Find Sci-Fi or Action movies
  - Recommend similar movies by genre
  - Find actors by genre

## Files:
- `data.cypher`: Creates nodes and relationships
- `queries.cypher`: Sample queries to explore the graph

## How to Use:
1. Create a Neo4j AuraDB instance
2. Open Neo4j Browser
3. Run contents of `data.cypher` to load data
4. Run `queries.cypher` to explore relationships

## Made as part of Neo4j Certification Program
