SELECT bug_id, author, comment,
  ROW_NUMBER() OVER (PARTITION BY bug_id
    ORDER BY comment_date) AS comment_number
FROM Comments;