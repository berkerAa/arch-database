CREATE TABLE ResourceEnum (
    Id SERIAL PRIMARY KEY,    -- Auto-incrementing ID for unique identification of each record
    EnumValue VARCHAR(100) UNIQUE  -- Unique string representing an enumeration value
);

COMMENT ON TABLE ResourceEnum IS 'Table for storing unique enumeration values used system-wide in the application';

COMMENT ON COLUMN ResourceEnum.Id IS 'Auto-incrementing ID, serving as the primary key for the table, ensuring each enumeration value record is uniquely identifiable';
COMMENT ON COLUMN ResourceEnum.EnumValue IS 'String field representing a unique enumeration value used across the system-wide application. Each enum value is distinct and used for various application functionalities';
