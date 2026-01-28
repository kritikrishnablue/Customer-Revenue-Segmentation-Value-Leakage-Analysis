-- Objective: Configure MySQL environment for bulk data loading

SET SQL_SAFE_UPDATES = 0;
SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'secure_file_priv';
