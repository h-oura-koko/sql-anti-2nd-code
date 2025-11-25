SELECT *
FROM Comments AS c
  LEFT OUTER JOIN (
    BugsComments JOIN Bugs AS b USING (issue_id)
  ) USING (comment_id)
  LEFT OUTER JOIN (
    FeaturesComments JOIN FeatureRequests AS f USING (issue_id)
  ) USING (comment_id)
WHERE c.comment_id = 9876;