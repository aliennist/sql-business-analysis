--Rolling 3-Month Average of Monthly Leads

WITH monthly_leads AS (
    SELECT
        DATE_TRUNC('month', created_date) AS lead_month,
        COUNT(*) AS lead_count
    FROM crm_leads
    GROUP BY 1
)

SELECT
    lead_month,
    lead_count,
    ROUND(
        AVG(lead_count) OVER (
            ORDER BY lead_month
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ),
        2
    ) AS rolling_3_month_avg
FROM monthly_leads
ORDER BY lead_month;


--Top Industries by Country
SELECT
    country,
    industry,
    COUNT(*) AS lead_count
FROM crm_leads
WHERE industry IS NOT NULL
GROUP BY country, industry
QUALIFY
    ROW_NUMBER() OVER (
        PARTITION BY country
        ORDER BY COUNT(*) DESC
    ) <= 3
ORDER BY country, lead_count DESC;


--Lead Source Trends Over Time
SELECT
    DATE_TRUNC('month', created_date) AS lead_month,
    lead_source,
    COUNT(*) AS lead_count
FROM crm_leads
GROUP BY lead_month, lead_source
ORDER BY lead_month, lead_source;

