CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `avg_mth_w_date` AS
    SELECT 
        `avg_month`.`Year` AS `Year`,
        `avg_month`.`Month` AS `Month`,
        (MAKEDATE(`avg_month`.`Year`, 1) + INTERVAL (`avg_month`.`Month` - 1) MONTH) AS `Date`,
        `avg_month`.`SO2` AS `SO2`,
        `avg_month`.`NO2` AS `NO2`,
        `avg_month`.`CO` AS `CO`,
        `avg_month`.`O3` AS `O3`,
        `avg_month`.`PM10` AS `PM10`,
        `avg_month`.`PM2_5` AS `PM2_5`,
        `avg_month`.`TEMP` AS `TEMP`,
        `avg_month`.`WD10` AS `WD10`,
        `avg_month`.`WS10` AS `WS10`
    FROM
        `avg_month`;
