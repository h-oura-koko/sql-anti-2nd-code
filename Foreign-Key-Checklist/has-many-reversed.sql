CREATE TABLE Child (
  child_id INT PRIMARY KEY
);

CREATE TABLE Parent (
  parent_id INT PRIMARY KEY,
  child_id INT NOT NULL,
  FOREIGN KEY (child_id) REFERENCES Child(child_id)
);