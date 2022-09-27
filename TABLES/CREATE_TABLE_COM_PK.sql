--criar uma nova tabela com PK E AUTOINCREMENTO

CREATE TABLE Course_Table_PK (
  Course_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Course_Name VARCHAR(30)  
  --CONSTRAINT PK PRIMARY KEY(Course_ID)
)


