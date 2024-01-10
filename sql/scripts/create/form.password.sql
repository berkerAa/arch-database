CREATE TABLE FormPassword (
    Id SERIAL PRIMARY KEY,         -- Auto-incrementing ID for unique identification of each record
    Password VARCHAR(255) NOT NULL -- Field to store the encrypted or hashed password
);

COMMENT ON TABLE FormPassword IS 'Table for storing encrypted user passwords. Each password is securely hashed and stored.';

COMMENT ON COLUMN FormPassword.Id IS 'Auto-incrementing ID, serving as the primary key for the table, uniquely identifying each password record';
COMMENT ON COLUMN FormPassword.Password IS 'Field for storing the encrypted or hashed password. It is crucial to ensure that passwords are stored securely and are not stored in plain text.';
