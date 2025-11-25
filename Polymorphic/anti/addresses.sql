CREATE TABLE Addresses (
  address_id   SERIAL PRIMARY KEY,
  parent       VARCHAR(20),     -- 'Users' または'Orders'が入る
  parent_id    BIGINT UNSIGNED NOT NULL,
  address      TEXT
);