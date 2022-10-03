
USE LUCAS_ALTER

select Course_ID,Course_Name 
from Course 
where Course_ID >= 1 and Course_ID <= 3

--Course_ID BETWEEN 1 AND 3
--and Course_Name like 'J%'

--Course_ID BETWEEN 1 AND 3

--like '%A%'
--'% qualquer coisa antes 
-- %' qualquer coisa depois

--Course_ID <> 7
--Course_ID != 7
--Course_ID < 7
--Course_Name <> 'C#'
--Course_Name = 'Flutter'
