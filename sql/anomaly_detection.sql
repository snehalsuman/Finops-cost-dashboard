SELECT 
  usage_start_time,
  service,
  cost
FROM `your_project.cloud_billing_data.billing_table`
WHERE cost > (
  SELECT AVG(cost) + 2 * STDDEV(cost)
  FROM `your_project.cloud_billing_data.billing_table`
)
ORDER BY cost DESC;