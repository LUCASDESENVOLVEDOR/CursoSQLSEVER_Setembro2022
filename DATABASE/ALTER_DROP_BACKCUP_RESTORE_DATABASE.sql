
--alterar nome de uma base criada
ALTER DATABASE LUCAS_TSQL
MODIFY NAME = LUCAS_TSQL_ALTER

-- deletar um banco de dados
USE master
GO
DROP DATABASE Lucas_ALTER

--realizar backup de um banco de dados
BACKUP DATABASE [Lucas_ALTER] TO 
DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\Lucas_ALTER.bak'
GO

--restaurar um banco de dados
RESTORE DATABASE LUCAS_ALTER
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\Lucas_ALTER.bak'
