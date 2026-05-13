-- CREATE DATABASE weapons_project;
-- USE weapons_project;

-- CREATE TABLE weapons_raw (
--     ID VARCHAR(50),
--     Weapon_Name TEXT,
--     Country_of_Origin TEXT,
--     Manufacturer TEXT,
--     Category TEXT,
--     Subcategory TEXT,
--     Year_Introduced VARCHAR(50),
--     Year_Retired VARCHAR(50),
--     Service_Status TEXT,
--     Caliber TEXT,
--     Action_Type TEXT,
--     Effective_Range_m VARCHAR(50),
--     Max_Range_m VARCHAR(50),
--     Weight_kg VARCHAR(50),
--     Length_mm VARCHAR(50),
--     Barrel_Length_mm VARCHAR(50),
--     Muzzle_Velocity_mps VARCHAR(50),
--     Rate_of_Fire_rpm VARCHAR(50),
--     Magazine_Capacity VARCHAR(50),
--     Warhead_Weight_kg VARCHAR(50),
--     Max_Speed_kmh VARCHAR(50),
--     Crew_Size VARCHAR(50),
--     Unit_Cost_USD VARCHAR(50),
--     Num_Operator_Nations VARCHAR(50),
--     Primary_Users TEXT,
--     NATO_Compatible TEXT,
--     Generation TEXT,
--     Theater_of_Operation TEXT,
--     Export_Status TEXT,
--     Combat_Proven TEXT,
--     Propulsion_Type TEXT,
--     Guidance_System TEXT,
--     Communication_System TEXT,
--     Operating_Environment TEXT,
--     Protection_Level TEXT,
--     Notes TEXT
-- );

-- SELECT * FROM weapons_raw;

-- CREATE TABLE weapons_clean AS
-- SELECT
--     Weapon_Name,
--     Country_of_Origin,
--     Manufacturer,
--     Category,
--     Subcategory,

--     CAST(NULLIF(Year_Introduced,'') AS UNSIGNED) AS Year_Introduced,
--     CAST(NULLIF(Year_Retired,'') AS UNSIGNED) AS Year_Retired,

--     LOWER(TRIM(Service_Status)) AS Service_Status, 
--     UPPER(TRIM(Combat_Proven)) AS Combat_Proven,

--     CAST(NULLIF(Unit_Cost_USD,'') AS UNSIGNED) AS Unit_Cost_USD,
--     CAST(NULLIF(Effective_Range_m,'') AS UNSIGNED) AS Effective_Range_m,
--     CAST(NULLIF(Max_Speed_kmh,'') AS UNSIGNED) AS Max_Speed_kmh,
--     CAST(NULLIF(Crew_Size,'') AS UNSIGNED) AS Crew_Size,

--     CAST(NULLIF(Num_Operator_Nations,'') AS UNSIGNED) AS Num_Operator_Nations,

--     NATO_Compatible,
--     Generation

-- FROM weapons_raw;


-- CREATE TABLE weapons_clean AS
-- SELECT
--     Weapon_Name,
--     Country_of_Origin,
--     Manufacturer,
--     Category,
--     Subcategory,

--     CASE 
--         WHEN Year_Introduced REGEXP '^[0-9]+$'
--         THEN CAST(Year_Introduced AS UNSIGNED)
--         ELSE NULL
--     END AS Year_Introduced,

--     CASE 
--         WHEN Year_Retired REGEXP '^[0-9]+$'
--         THEN CAST(Year_Retired AS UNSIGNED)
--         ELSE NULL
--     END AS Year_Retired,

--     LOWER(TRIM(Service_Status)) AS Service_Status,
--     UPPER(TRIM(Combat_Proven)) AS Combat_Proven,

--     CASE 
--         WHEN Unit_Cost_USD REGEXP '^[0-9]+(\\.[0-9]+)?$'
--         THEN CAST(Unit_Cost_USD AS DECIMAL(15,2))
--         ELSE NULL
--     END AS Unit_Cost_USD,

--     CASE 
--         WHEN Effective_Range_m REGEXP '^[0-9]+(\\.[0-9]+)?$'
--         THEN CAST(Effective_Range_m AS DECIMAL(10,2))
--         ELSE NULL
--     END AS Effective_Range_m,

--     CASE 
--         WHEN Max_Speed_kmh REGEXP '^[0-9]+(\\.[0-9]+)?$'
--         THEN CAST(Max_Speed_kmh AS DECIMAL(10,2))
--         ELSE NULL
--     END AS Max_Speed_kmh,

--     CASE 
--         WHEN Crew_Size REGEXP '^[0-9]+$'
--         THEN CAST(Crew_Size AS UNSIGNED)
--         ELSE NULL
--     END AS Crew_Size,

--     CASE 
--         WHEN Num_Operator_Nations REGEXP '^[0-9]+$'
--         THEN CAST(Num_Operator_Nations AS UNSIGNED)
--         ELSE NULL
--     END AS Num_Operator_Nations,

--     NATO_Compatible,
--     Generation

-- FROM weapons_raw;


 SELECT * FROM weapons_clean;


