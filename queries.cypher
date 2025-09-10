// Find all Sci-Fi movies
MATCH (m:Movie)-[:BELONGS_TO]->(g:Genre {name: "Sci-Fi"})
RETURN m.title;

// Find all actors who acted in Action movies
MATCH (p:Person)-[:ACTED_IN]->(m:Movie)-[:BELONGS_TO]->(g:Genre {name: "Action"})
RETURN p.name, m.title;

// Recommend movies based on shared genre
MATCH (m1:Movie)-[:BELONGS_TO]->(g:Genre)<-[:BELONGS_TO]-(m2:Movie)
WHERE m1.title = "Inception" AND m1 <> m2
RETURN DISTINCT m2.title AS Recommended;
