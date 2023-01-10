-- Creating tables for class-dict.csv
CREATE TABLE class_dict (
	class_index int NOT NULL,
	sport VARCHAR(40) NOT NULL,
	height int NOT NULL,
	width int NOT NULL,
	scale_by int NOT NULL,
	PRIMARY KEY (class_index)
);

-- Creating tables for sports.csv
CREATE TABLE sports (
	filepaths VARCHAR(40) NOT NULL,
	labels VARCHAR(40) NOT NULL,
	data_set VARCHAR(5) NOT NULL
);

-- Joining the two databases together
SELECT *
INTO join_table
FROM sports
FULL OUTER JOIN class_dict
ON sports.labels = class_dict.sport;

-- Drop extraneous columns
ALTER TABLE join_table
	DROP COLUMN class_index,
	DROP COLUMN labels;