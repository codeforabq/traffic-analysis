CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `root`@`localhost`
    SQL SECURITY DEFINER
VIEW `Lead_Coal_View` AS
    SELECT
        `uharecords`.`YEAR` AS `year`, COUNT(0) AS `count(*)`
    FROM
        `uharecords`
    WHERE
        ((`uharecords`.`ASTREET` = 'Lead')
            OR (`uharecords`.`BSTREET` = 'Lead')
            OR (`uharecords`.`ASTREET` = 'Coal')
            OR (`uharecords`.`BSTREET` = 'Coal'))
    GROUP BY `uharecords`.`YEAR`