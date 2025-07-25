SELECT 
  service, 
  ROUND(SUM(cost), 2) AS total_cost
FROM `your_project.cloud_billing_data.billing_table`
GROUP BY service
ORDER BY total_cost Desc;