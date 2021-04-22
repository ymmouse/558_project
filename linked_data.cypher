LOAD CSV WITH HEADERS FROM "file:///nodes.csv" AS line
MERGE (p:person{id:line.id, name:line.name, blood_status:line.blood_status, hair_color:line.hair_color, eye_color:line.eye_color, patronus:line.patronus, wand:line.wand, occupation:line.occupation, loyalty:line.loyalty, house:line.house})

LOAD CSV WITH HEADERS FROM "file:///relations.csv" AS line
match (from:person{id:line.src}),(to:person{id:line.dst})
merge (from)-[r:rel{property:line.relation}]->(to)