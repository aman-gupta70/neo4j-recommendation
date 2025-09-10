
// Create Movie Nodes
CREATE (:Movie {title: "Inception", year: 2010});
CREATE (:Movie {title: "Interstellar", year: 2014});
CREATE (:Movie {title: "The Matrix", year: 1999});

// Create Actor Nodes
CREATE (:Person {name: "Leonardo DiCaprio"});
CREATE (:Person {name: "Keanu Reeves"});
CREATE (:Person {name: "Matthew McConaughey"});

// Create Genre Nodes
CREATE (:Genre {name: "Sci-Fi"});
CREATE (:Genre {name: "Action"});

// Create Relationships
MATCH (m:Movie {title: "Inception"}), (p:Person {name: "Leonardo DiCaprio"})
CREATE (p)-[:ACTED_IN]->(m);

MATCH (m:Movie {title: "Interstellar"}), (p:Person {name: "Matthew McConaughey"})
CREATE (p)-[:ACTED_IN]->(m);

MATCH (m:Movie {title: "The Matrix"}), (p:Person {name: "Keanu Reeves"})
CREATE (p)-[:ACTED_IN]->(m);

MATCH (m:Movie {title: "Inception"}), (g:Genre {name: "Sci-Fi"})
CREATE (m)-[:BELONGS_TO]->(g);

MATCH (m:Movie {title: "The Matrix"}), (g:Genre {name: "Action"})
CREATE (m)-[:BELONGS_TO]->(g);
