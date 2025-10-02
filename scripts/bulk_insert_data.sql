/*
Modify the location of source files as per your environment
*/
USE DataWareHouse;
GO
-- Bulk Update crm_cust_info
TRUNCATE TABLE bronze.crm_cust_info;
GO

BULK INSERT bronze.crm_cust_info
FROM 'E:\Learning Material\Data Engineering\datawarehouse\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  TABLOCK
);

SELECT COUNT(*) FROM bronze.crm_cust_info;
SELECT TOP(10) * FROM bronze.crm_cust_info;
GO


-- Bulk Update crm_prd_info
TRUNCATE TABLE bronze.crm_prd_info;
GO
BULK INSERT bronze.crm_prd_info
FROM 'E:\Learning Material\Data Engineering\datawarehouse\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  TABLOCK
);

SELECT COUNT(*) FROM bronze.crm_prd_info;
SELECT TOP(10) * FROM bronze.crm_prd_info;
GO



-- Bulk Update crm_sales_details
TRUNCATE TABLE bronze.crm_sales_details;
GO

BULK INSERT bronze.crm_sales_details
FROM 'E:\Learning Material\Data Engineering\datawarehouse\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  TABLOCK
);

SELECT COUNT(*) FROM bronze.crm_sales_details;
SELECT TOP(10) * FROM bronze.crm_sales_details;
GO



-- Bulk Update erp_loc_a101
TRUNCATE TABLE bronze.erp_loc_a101;
GO

BULK INSERT bronze.erp_loc_a101
FROM 'E:\Learning Material\Data Engineering\datawarehouse\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
WITH (
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  TABLOCK
);

SELECT COUNT(*) FROM bronze.erp_loc_a101;
SELECT TOP(10) * FROM bronze.erp_loc_a101;
GO



-- Bulk Update erp_cust_az12
TRUNCATE TABLE bronze.erp_cust_az12;
GO

BULK INSERT bronze.erp_cust_az12
FROM 'E:\Learning Material\Data Engineering\datawarehouse\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
WITH (
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  TABLOCK
);

SELECT COUNT(*) FROM bronze.erp_cust_az12;
SELECT TOP(10) * FROM bronze.erp_cust_az12;
GO




-- Bulk Update erp_px_cat_g1v2
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
GO

BULK INSERT bronze.erp_px_cat_g1v2
FROM 'E:\Learning Material\Data Engineering\datawarehouse\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
WITH (
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  TABLOCK
);

SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2;
SELECT TOP(10) * FROM bronze.erp_px_cat_g1v2;
GO
