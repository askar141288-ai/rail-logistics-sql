-- queries/kpi_cost_per_ton_km.sql
SELECT * FROM v_cost_per_ton_km ORDER BY cost_per_ton_km NULLS LAST LIMIT 20;