SELECT AVG(average_total_duration)
FROM
  (SELECT SUM(completed_at - started_at) AS average_total_duration
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name) 
AS foo;