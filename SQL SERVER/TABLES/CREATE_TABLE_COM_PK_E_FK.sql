
CREATE TABLE Students_TSQL(
   Students_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
   --coluna que representa a chave estrangeira.
   Course_ID INT NOT NULL,
   Students_Name VARCHAR(30) NOT NULL,

   --add a restricao

   --CONSTRAINT FK_COURSE = nome da restricao.
   --FOREIGN KEY = tipo da restricao 
   --(Course_ID) = nome da nossa coluna que sera FK

   --REFERENCES = qual tabela possui a PK (Primary Key)
   --Course_Table_PK(Course_ID) = qual coluna dessa tabela é a PK.

   CONSTRAINT FK_COURSE FOREIGN KEY (Course_ID) REFERENCES Course_Table_PK(Course_ID)   
)

--sps_course
select * from Course_Table_PK

insert into Students_TSQL (Course_ID,Students_Name)
values (3, 'Lucas')




