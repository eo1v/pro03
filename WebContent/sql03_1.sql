CREATE TABLE test(NAME VARCHAR(50), POINT INT);
INSERT INTO test VALUES ("한시연",100);

SELECT * FROM test;
CREATE TABLE notice(
	no INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
	content VARCHAR(1000),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);

DROP TABLE notice;

DESC notice;

INSERT INTO notice(title, content) VALUES("테스트 글1","테스트 글1 내용입니다.");
COMMIT;
SELECT *FROM notice;

CREATE TABLE USER(
	id VARCHAR(30) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	POINT INT DEFAULT 0,
	grade VARCHAR(4) DEFAULT "F",
	visted INT DEFAULT 1,
	tel VARCHAR(11),
	addr VARCHAR(150),
	email VARCHAR(100),
	birth DATE,
	regdate DATETIME DEFAULT NOW()
);

DESC user;

DROP TABLE user;

SELECT * FROM user;


CREATE TABLE pic(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(20),
	pos INT DEFAULT 1
);

DESC pic;

SELECT * FROM pic;

CREATE TABLE tourlist(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20) NOT NULL,
	cate VARCHAR(20) NOT NULL,
	place VARCHAR(100) NOT NULL,
	content1 VARCHAR(1000) NOT NULL,
	content2 VARCHAR(1000) NOT NULL
);

DESC tourlist;