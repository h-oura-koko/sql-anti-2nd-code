CREATE TABLE Addresses (
  address_id   SERIAL PRIMARY KEY,
  parent       VARCHAR(20),     -- 'Users' または'Orders'が入る
  parent_id    BIGINT UNSIGNED NOT NULL,
  users_usage  VARCHAR(20),     -- 'billing' または'shipping'が入る
  orders_usage VARCHAR(20),     -- 'billing' または'shipping'が入る
  address      TEXT
);