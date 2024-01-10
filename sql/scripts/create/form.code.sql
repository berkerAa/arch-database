CREATE TABLE FormCode (
    Id SERIAL PRIMARY KEY,  -- Auto-incrementing ID for unique identification of each record
    Code INT                -- Numerical field for the confirmation code
);

COMMENT ON TABLE FormCode IS 'Table for storing confirmation codes for phone or email verification';

COMMENT ON COLUMN FormCode.Id IS 'Auto-incrementing ID, serving as the primary key for unique identification of each confirmation code record';
COMMENT ON COLUMN FormCode.Code IS 'Numerical field representing the confirmation code used for verification processes like phone or email confirmations';