CREATE TABLE ConfirmationEmailCode (
    Id SERIAL PRIMARY KEY,                       -- Auto-incrementing ID for unique identification of each record
    CodeId INT NOT NULL,                         -- Foreign key referencing the primary key of FormCode table
    EmailId INT NOT NULL,                        -- Foreign key referencing the primary key of FormEmail table
    ExpirationDate TIMESTAMP,                    -- Date and time when the confirmation code expires
    ConfirmationDate TIMESTAMP,                  -- Date and time when the confirmation was completed
    ConfirmationStateId INT NOT NULL,            -- Foreign key referencing the primary key of ReverseEnumConfirmation table
    FOREIGN KEY (CodeId) REFERENCES FormCode(Id),
    FOREIGN KEY (EmailId) REFERENCES FormEmail(Id),
    FOREIGN KEY (ConfirmationStateId) REFERENCES ReverseEnumConfirmation(Id)
);

COMMENT ON TABLE ConfirmationEmailCode IS 'Table for managing confirmation process for email addresses, linking confirmation codes, email IDs, and confirmation states';

COMMENT ON COLUMN ConfirmationEmailCode.CodeId IS 'References the confirmation code from the FormCode table';
COMMENT ON COLUMN ConfirmationEmailCode.EmailId IS 'References the email ID from the FormEmail table for which the confirmation is being tracked';
COMMENT ON COLUMN ConfirmationEmailCode.ExpirationDate IS 'The expiration date and time of the confirmation code';
COMMENT ON COLUMN ConfirmationEmailCode.ConfirmationDate IS 'The date and time when the email address was confirmed';
COMMENT ON COLUMN ConfirmationEmailCode.ConfirmationStateId IS 'References the confirmation state from the ReverseEnumConfirmation table, indicating the current state of the confirmation process';
