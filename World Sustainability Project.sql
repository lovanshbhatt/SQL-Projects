-- Q10 : Do "Full Democracies" have higher renewable energy output than other regime types?

SELECT 
    dim_country.regime_type, 
    AVG(fact_sustainability.renewable_electricity_pct) AS avg_renewable_output
FROM fact_sustainability 
JOIN dim_country ON fact_sustainability.country_code = dim_country.country_code
WHERE fact_sustainability.year_val = 2018
GROUP BY dim_country.regime_type
ORDER BY avg_renewable_output DESC;

-- The Findings: 
-- "Electoral Democracies" typically have higher renewable_electricity_pct output and better environmental regulations.