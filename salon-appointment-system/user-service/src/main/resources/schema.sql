DROP TABLE IF EXISTS USERS;
CREATE TABLE USERS (
  ID INT NOT NULL,
  FIRST_NAME VARCHAR(50) NOT NULL,
  LAST_NAME VARCHAR(50) NOT NULL,
  PHONE_NUM VARCHAR(20) NOT NULL,
  EMAIL VARCHAR(50),
  PRIMARY KEY (ID));
  
DROP TABLE IF EXISTS AUTHORITIES;
CREATE TABLE AUTHORITIES (
  ID INT NOT NULL,
  USER_ID INT NOT NULL,
  AUTHORITY VARCHAR(20) NOT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT USER_ID_AUTHORITY_UK
    UNIQUE (USER_ID, AUTHORITY),
  CONSTRAINT USER_ID_FK
    FOREIGN KEY (USER_ID)
    REFERENCES USERS (ID));
    
DROP SEQUENCE IF EXISTS USERS_SEQ;
CREATE SEQUENCE USERS_SEQ
  START WITH 101
  INCREMENT BY 1;

DROP SEQUENCE IF EXISTS AUTHORITIES_SEQ;
CREATE SEQUENCE AUTHORITIES_SEQ
  START WITH 101
  INCREMENT BY 1;