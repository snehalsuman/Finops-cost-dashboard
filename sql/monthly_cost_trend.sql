SELECT 
  FORMAT_TIMESTAMP('%Y-%m', usage_start_time) AS month,
  ROUND(SUM(cost), 2) AS total_cost
FROM `your_project.cloud_billing_data.billing_table`
GROUP BY month
ORDER BY month;