CREATE TABLE PersonalContacts (
  -- 他の列 . . .
  salutation VARCHAR(4)
    CHECK (salutation IN ('Mr.', 'Mrs.', 'Ms.', 'Dr.', 'Rev.'))
);