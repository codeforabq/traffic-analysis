CREATE TABLE crash (
	crashId              INT UNSIGNED AUTO_INCREMENT NOT NULL,
	crashCityId          INT UNSIGNED,
	crashReportingAgency VARCHAR(255),
	crashDateTime        DATETIME                    NOT NULL,
	crashAddress         VARCHAR(255),
	crashGeometry        POINT                       NOT NULL,
	crashInjured         INT UNSIGNED,
	crashKilled          INT UNSIGNED,
	crashVehicles        INT UNSIGNED,
	PRIMARY KEY (crashId)
);