DROP VIEW IF EXISTS Lead_Coal_View;

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `root`@`localhost` # Maybe not the best idea in the world, but this works for now.
    SQL SECURITY DEFINER
VIEW `Lead_Coal_View` AS
    SELECT
        `uhaRecords`.`YEAR` AS `year`, COUNT(0) AS `count(*)`
    FROM
        `uhaRecords`
    WHERE
        ((`uhaRecords`.`ASTREET` LIKE 'Lead')
            OR (`uhaRecords`.`BSTREET` LIKE 'Lead')
            OR (`uhaRecords`.`ASTREET` LIKE 'Coal')
            OR (`uhaRecords`.`BSTREET` LIKE 'Coal'))
    GROUP BY `uhaRecords`.`YEAR`
