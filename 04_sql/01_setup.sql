CREATE DATABASE IF NOT EXISTS who_moderates_europe;
USE who_moderates_europe;
SELECT COUNT(*) AS rows_imported
FROM who_moderates_europe.monthly_decision_counts;
SELECT `Month`, `Category`, `Method`, `Count`
FROM who_moderates_europe.monthly_decision_counts
WHERE `Month` = '2024-01'
ORDER BY `Category`, `Method`;
SELECT
    `Year`,
    `Category`,
    `Method`,
    SUM(`Count`) AS decisions,
    ROUND(
        100.0 * SUM(`Count`)
        / SUM(SUM(`Count`)) OVER (
            PARTITION BY `Year`, `Category`
        ),
        2
    ) AS share_percent
FROM who_moderates_europe.monthly_decision_counts
GROUP BY `Year`, `Category`, `Method`
ORDER BY `Category`, `Year`, `Method`;
CREATE VIEW who_moderates_europe.jan_may_automation_comparison AS
SELECT
    `Year`,
    `Category`,
    `Method`,
    SUM(`Count`) AS decisions,
    100.0 * SUM(`Count`)
        / SUM(SUM(`Count`)) OVER (
            PARTITION BY `Year`, `Category`
        ) AS share_percent
FROM who_moderates_europe.monthly_decision_counts
GROUP BY `Year`, `Category`, `Method`;
SELECT *
FROM who_moderates_europe.jan_may_automation_comparison
ORDER BY `Category`, `Year`, `Method`;