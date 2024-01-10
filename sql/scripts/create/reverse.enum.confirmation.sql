CREATE TABLE ReverseEnumConfirmation (
    Id SERIAL PRIMARY KEY,                  -- Auto-incrementing ID for unique identification of each record
    EnumId INT NOT NULL,                    -- Foreign key referencing the primary key of ResourceEnum table
    FOREIGN KEY (EnumId) REFERENCES ResourceEnum(Id)
);

COMMENT ON TABLE ReverseEnumConfirmation IS 'Relation table for reverse integer encoding of specific application enum aspects, in this case, confirmation states';

COMMENT ON COLUMN ReverseEnumConfirmation.Id IS 'Auto-incrementing ID, serving as the primary key for the table, uniquely identifying each record';
COMMENT ON COLUMN ReverseEnumConfirmation.EnumId IS 'Foreign key reference to the ResourceEnum table''s primary key, representing a specific enum value related to confirmation states';
