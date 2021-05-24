SELECT name, AVG(duration)
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY name
ORDER BY AVG(duration) DESC;