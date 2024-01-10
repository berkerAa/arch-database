CREATE TABLE FormPerson (
    Id SERIAL PRIMARY KEY,  
    Name VARCHAR(255)       
);

COMMENT ON TABLE FormPerson IS 'Table for storing personal information of individuals';

COMMENT ON COLUMN FormPerson.Id IS 'Auto-incrementing ID for unique identification of each person record. This field serves as the primary key for the table.';
COMMENT ON COLUMN FormPerson.Name IS 'Name of the person. This field stores the full name as a string. It is designed to accommodate a wide range of name lengths.';
