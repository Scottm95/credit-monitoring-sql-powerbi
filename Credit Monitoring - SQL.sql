Credit Monitoring - SQL

-- created new column for date format only
SELECT *,
SUBSTRING(Created, 1, 10) AS Created_Date
FROM "Credit Monitoring July 25";

ALTER TABLE "Credit Monitoring July 25"
ADD COLUMN Created_Date TEXT;

UPDATE "Credit Monitoring July 25"
SET Created_Date = SUBSTRING(Created, 1, 10);


-- trimmed and lowercase to "QA Name" COLUMN
UPDATE "Credit Monitoring July 25"
SET "QA Name" = LOWER(TRIM("QA Name"))
WHERE "QA Name" IS NOT NULL;

-- anonymised "QA Name" column
-- example steps with example name to preserve sensitive data
UPDATE "Credit Monitoring July 25" SET "QA Name" = 'employee_1' WHERE "QA Name" = 'example name 1';
UPDATE "Credit Monitoring July 25" SET "QA Name" = 'employee_2' WHERE "QA Name" IS NULL;


-- made operation (CRT) more user friendly
UPDATE "Credit Monitoring July 25"
SET Operation = 'Complaints'
WHERE Operation = 'CRT';


-- Interaction Type NULL changed to Unknown
UPDATE "Credit Monitoring July 25"
SET "Interaction Type" = 'Unknown'
WHERE "Interaction Type" IS NULL;

-- lowercase on "Was the Credit Code used correctly?"
UPDATE "Credit Monitoring July 25"
SET "Was the Credit Code used correctly?" = LOWER(TRIM("Was the Credit Code used correctly?"))
WHERE "Was the Credit Code used correctly?" IS NOT NULL;

-- updated NULL to Unknown in "Was the Credit Code used correctly?"
UPDATE "Credit Monitoring July 25"
SET "Was the Credit Code used correctly?" = 'unknown'
WHERE "Was the Credit Code used correctly?" IS NULL;




-- replaced NULL with No in Appealed? column
UPDATE "Credit Monitoring July 25"
SET "Appealed?" = 'No'
WHERE "Appealed?" IS NULL;


-- added columns to contain credit amount given & credit that should have been given
ALTER TABLE "Credit Monitoring July 25" ADD COLUMN Credit_given REAL;
ALTER TABLE "Credit Monitoring July 25" ADD COLUMN Credit_Amount_Correct REAL;

-- converted credit columns to numerical. Removed £ symbols. 
UPDATE "Credit Monitoring July 25"
SET Credit_given = CAST(REPLACE("How much compensation WAS given by the Agent?", "£", "") AS REAL)
WHERE "How much compensation WAS given by the Agent?" IS NOT NULL;

UPDATE "Credit Monitoring July 25"
SET Credit_Amount_Correct = CAST(REPLACE("How much compensation SHOULD the Agent have given?", "£", "") AS REAL)
WHERE "How much compensation SHOULD the Agent have given?" IS NOT NULL;