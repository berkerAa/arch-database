CREATE TABLE FormEmail (
    Id SERIAL PRIMARY KEY,  -- Auto-incrementing ID for unique identification of each email record
    LocalPart VARCHAR(64),  -- Local part of the email address, as defined in RFC 5321 and RFC 5322
    DomainPart VARCHAR(255) -- Domain part of the email address, conforming to domain name standards as defined in RFC 1035
);

COMMENT ON TABLE FormEmail IS 'Table for storing email addresses split into local and domain parts, adhering to internet email address standards';

COMMENT ON COLUMN FormEmail.Id IS 'Auto-incrementing ID for unique identification of each email record';
COMMENT ON COLUMN FormEmail.LocalPart IS 'The local part of the email address, which is the section before the "@" symbol, as defined in RFC 5321 and RFC 5322. This part of the email address is case-insensitive and can include a variety of characters such as letters, numbers, and certain symbols.';
COMMENT ON COLUMN FormEmail.DomainPart IS 'The domain part of the email address, which is the section after the "@" symbol, conforming to domain name standards as defined in RFC 1035. The domain part is case-insensitive and typically includes only letters, numbers, and hyphens.';
