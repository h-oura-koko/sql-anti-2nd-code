CREATE TABLE Parent (
  parent_id INT PRIMARY KEY
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
) PARTITION BY HASH(child_id) PARTITIONS 11;

ERROR 1506 (HY000): Foreign keys are not yet supported in conjunction with partitioning
（外部キーとパーティショニングの組み合わせはまだサポートされていません）