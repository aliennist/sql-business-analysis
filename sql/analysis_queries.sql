/* =========================================
   SQL BUSINESS ANALYSIS – CRM LEADS
   ========================================= */

/* 1. Lead volume by source */
SELECT
    lead_source,
    COUNT(*) AS lead_count
FROM cleaned_leads
GROUP BY lead_source
ORDER BY lead_count DESC;

/* 2. Monthly lead trend */
SELECT
    DATE_TRUNC('month', created_date) AS month,
    COUNT(*) AS lead_count
FROM cleaned_leads
GROUP BY month
ORDER BY month;

/* 3. Lead distribution by industry */
SELECT
    industry,
    COUNT(*) AS lead_count
FROM cleaned_leads
GROUP BY industry
ORDER BY lead_count DESC;

/* 4. Lead volume by country */
SELECT
    country,
    COUNT(*) AS lead_count
FROM cleaned_leads
GROUP BY country
ORDER BY lead_count DESC;

/* 5. Leads missing phone number */
SELECT
    COUNT(*) AS missing_phone_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_leads),
        2
    ) AS missing_phone_percentage
FROM cleaned_leads
WHERE phone IS NULL
   OR phone = '';

