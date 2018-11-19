Run any VM with Docker Host

Create directories

mkdir ~/neo4j
mkdir ~/neo4j/data
mkdir ~/neo4j/logs

Then run:

docker run --publish=7474:7474 --publish=7687:7687 --volume=$HOME/neo4j/data:/data --volume=$HOME/ neo4j/logs:/logs neo4j:3.0

Now access Neo4J through browser at port 7474
for example: http://192.168.188.120:7474

CREATE (lucas:Person{name:'Lucas Jellema'}) – [:PRESENTS] ->(session:Session {title:'50 Shades of Data: How, When, Why—Big, Relational, NoSQL, Elastic, Graph, Event', code:'DEV4976'})
CREATE (daniel:Person{name:'Daniel Bryant'}) – [:PRESENTS] ->(session:Session {title:'Continuous Delivery with Containers and Java: Lessons Learned and Mistakes Made', code:'DEV5349'})
CREATE (luis:Person{name:'Luis Weir'}) – [:PRESENTS] ->(session:Session {title:'The Seven Deadly Sins of API Design', code:'DEV4921'})
MERGE (daniel:Person{name:'Daniel Bryant'}) CREATE (daniel) - [:PRESENTS] -> (session:Session{title:'AdoptOpenJDK: Lessons Learned from the New Build Farm for Java Itself', code:'TUT5283'})
CREATE (adam:Person{name:'Adam Farley'}) 
MATCH (adam:Person {name:'Adam Farley'}), ((session:Session {code:'TUT5283'})) MERGE (adam)-[:PRESENTS]-> (session)
CREATE (session:Session{title:'Oracle Cloud Soaring: Live Demo of a Poly-Cloud Microservices Implementation ', code:'DEV4979'}) 
MATCH (luis:Person {name:'Luis Weir'}), ((session:Session {code:'DEV4979'})) MERGE (luis)-[:PRESENTS]-> (session)
MATCH (lucas:Person {name:'Lucas Jellema'}), ((session:Session {code:'DEV4979'})) MERGE (lucas)-[:PRESENTS]-> (session)

CREATE (arun:Person{name:'Arun Gupta'}) – [:PRESENTS] ->(session:Session {title:'A Day in a Java Developer’s Life, with a Taste of Kubernetes', code:'DEV4854'})
MATCH (luis:Person {name:'Luis Weir'}), ((session:Session {code:'DEV4854'})) MERGE (luis)-[:ATTENDS]-> (session)
MATCH (lucas:Person {name:'Lucas Jellema'}), ((session:Session {code:'DEV4854'})) MERGE (lucas)-[:ATTENDS]-> (session)

// add a new person and attendee in one go
MERGE (session:Session {code:'DEV4979'}) CREATE (session) <- [:ATTENDS] - (john:Person{name:'John Millers'})

//Luis likes Daniel Bryant as a speaker
MATCH (luis:Person {name:'Luis Weir'}), ((daniel:Person {name:'Daniel Bryant'})) MERGE (luis)-[:VALUES]-> (daniel)

MATCH (n) RETURN n


// now the hunt is on

match (lucas:Person {name:'Lucas Jellema'}) - [:ATTENDS] -> (s1) RETURN s1

// find people who attended the same sessions as ME
match (lucas:Person {name:'Lucas Jellema'}) - [:ATTENDS] -> (s1) <- [:ATTENDS] - (p2) RETURN p2

// find presenters valued by the people who attended the same sessions as I did:
match (lucas:Person {name:'Lucas Jellema'}) - [:ATTENDS] -> (s1) <- [:ATTENDS] - (p2) - [:VALUES] -> (p3) RETURN p3

// find sessions presented by presenters valued by the people who attended the same sessions as I did:
match (lucas:Person {name:'Lucas Jellema'}) - [:ATTENDS] -> (session1) 
  <- [:ATTENDS] - (recommender) - [:VALUES] -> (speaker) - [:PRESENTS] -> (session) RETURN session, speaker.name, recommender.name



To delete:

MATCH (n:Dog)-[r]-() DELETE n, r

MATCH (n:Dog)-[r]-() DELETE n, r

// delete all:
MATCH (n)-[r]-() DELETE n, r


Relationally:
