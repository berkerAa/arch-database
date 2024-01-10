CREATE TABLE AttributeUser (
    Id SERIAL PRIMARY KEY,                   -- Auto-incrementing ID for unique identification of each user attribute record
    PhoneId INT,                             -- Foreign key referencing the primary key of FormPhone table
    EmailId INT,                             -- Foreign key referencing the primary key of FormEmail table
    PersonId INT,                            -- Foreign key referencing the primary key of FormPerson table
    PasswordId INT,                          -- Foreign key referencing the primary key of FormPassword table
    AttributeStateId INT,                    -- Foreign key referencing the primary key of ReverseEnumAttributeState table
    FOREIGN KEY (PhoneId) REFERENCES FormPhone(Id),
    FOREIGN KEY (EmailId) REFERENCES FormEmail(Id),
    FOREIGN KEY (PersonId) REFERENCES FormPerson(Id),
    FOREIGN KEY (PasswordId) REFERENCES FormPassword(Id),
    FOREIGN KEY (AttributeStateId) REFERENCES ReverseEnumAttributeState(Id)
);

COMMENT ON TABLE AttributeUser IS 'Table for managing the relationships between users and their various attributes, such as phone, email, personal information, password, and attribute state';

COMMENT ON COLUMN AttributeUser.PhoneId IS 'References the phone information from the FormPhone table';
COMMENT ON COLUMN AttributeUser.EmailId IS 'References the email address from the FormEmail table';
COMMENT ON COLUMN AttributeUser.PersonId IS 'References the personal information from the FormPerson table';
COMMENT ON COLUMN AttributeUser.PasswordId IS 'References the encrypted password from the FormPassword table';
COMMENT ON COLUMN AttributeUser.AttributeStateId IS 'References the attribute state (like active, inactive) from the ReverseEnumAttributeState table';
