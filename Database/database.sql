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
	data_set VARCHAR(5) NOT NULL,
	bins VARCHAR(40) NOT NULL
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

-- Creating tables for mean spending.csv
CREATE TABLE mean_spending (
	sport VARCHAR(40) NOT NULL,
	totalcost curr NOT NULL,
	registration MONEY(2,1) NOT NULL,
	equipment MONEY(2,1) NOT NULL,
	travel MONEY(2,1) NOT NULL,
	lessons MONEY(2,1) NOT NULL,
	camps MONEY(2,1) NOT NULL,
	PRIMARY KEY (sport)
);

-- Creating tables for avgtime vs avgcost.csv
CREATE TABLE time_cost (
	sport VARCHAR(40) NOT NULL,
	avg_cost MONEY(2,1) NOT NULL,
	avg_length FLOAT NOT NULL
);

-- DROP TABLE mean_spending, time_cost;
