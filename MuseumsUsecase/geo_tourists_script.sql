SET CURRENT FUNCTION PATH = CURRENT FUNCTION PATH, db2gse;
	
CREATE TABLE GEO_TOURISTS(
   user_id INT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   user_loc db2gse.ST_POINT NOT NULL,
   PRIMARY KEY (user_id))
   ORGANIZE BY ROW;

INSERT INTO GEO_TOURISTS(user_loc)
VALUES (db2gse.ST_Point (-74.1824830955078, 40.7705705469009, 1) ),
(db2gse.ST_Point(-120.436, 34.9531, 1)),
(db2gse.ST_Point(-120.436, 34.9531, 1)),
(db2gse.ST_Point(-111.27845602187497, 40.59386155517787, 1)),
(db2gse.ST_Point(-112.00355367812489, 33.572290986838915, 1));

SELECT * FROM GEO_TOURISTS;


