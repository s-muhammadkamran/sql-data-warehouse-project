Use Master;

IF NOT EXISTS (SELECT name from sys.databases where name = 'DataWareHouse')
BEGIN
	CREATE DATABASE DataWareHouse
END

USE DataWareHouse;

GO

IF NOT EXISTS (SELECT name from sys.schemas Where name = 'bronze')
BEGIN
	EXEC('CREATE schema bronze')
END

IF NOT EXISTS (SELECT name from sys.schemas Where name = 'silver')
BEGIN
	EXEC('CREATE schema silver')
END

IF NOT EXISTS (SELECT name from sys.schemas Where name = 'gold')
BEGIN
	EXEC('CREATE schema gold')
END

GO
