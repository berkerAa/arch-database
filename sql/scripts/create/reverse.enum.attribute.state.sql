CREATE TABLE ReverseEnumAttributeState (
    Id SERIAL PRIMARY KEY,                  -- Auto-incrementing ID for unique identification of each record
    EnumId INT NOT NULL,                    -- Foreign key referencing the primary key of ResourceEnum table
    FOREIGN KEY (EnumId) REFERENCES ResourceEnum(Id)
);

COMMENT ON TABLE ReverseEnumAttributeState IS 'Relation table for reverse integer encoding of specific application enum aspects, in this case, attribute states (active, inactive, etc.)';

COMMENT ON COLUMN ReverseEnumAttributeState.Id IS 'Auto-incrementing ID, serving as the primary key for the table, uniquely identifying each record';
COMMENT ON COLUMN ReverseEnumAttributeState.EnumId IS 'Foreign key reference to the ResourceEnum table''s primary key, representing a specific enum value related to attribute states';
