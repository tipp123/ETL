CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `avg_day` AS
    SELECT 
        CAST(`airdata`.`DateTime` AS DATE) AS `Date`,
        ROUND(AVG(`airdata`.`SO2`), 2) AS `SO2`,
        ROUND(AVG(`airdata`.`NO2`), 2) AS `NO2`,
        ROUND(AVG(`airdata`.`CO`), 2) AS `CO`,
        ROUND(AVG(`airdata`.`O3`), 2) AS `O3`,
        ROUND(AVG(`airdata`.`PM10`), 2) AS `PM10`,
        ROUND(AVG(`airdata`.`PM2_5`), 2) AS `PM2_5`,
        ROUND(AVG(`airdata`.`TEMP`), 2) AS `TEMP`,
        ROUND(AVG(`airdata`.`WD10`), 2) AS `WD10`,
        ROUND(AVG(`airdata`.`WS10`), 2) AS `WS10`
    FROM
        `airdata`
    GROUP BY CAST(`airdata`.`DateTime` AS DATE);