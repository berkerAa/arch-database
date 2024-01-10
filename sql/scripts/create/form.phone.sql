CREATE TABLE FormPhone (
    ID SERIAL PRIMARY KEY,
    CountryCode VARCHAR(10),
    NationalDestinationCode VARCHAR(20),
    SubscriberNumber VARCHAR(20)
);

COMMENT ON TABLE FormPhone IS 'Table for storing phone information according to the E.164 standard';

COMMENT ON COLUMN FormPhone.ID IS 'Auto-incrementing ID for unique identification of each record';
COMMENT ON COLUMN FormPhone.CountryCode IS 'E.164 country code, identifies the country of the phone number';
COMMENT ON COLUMN FormPhone.NationalDestinationCode IS 'National destination code, identifies a specific region or area within the country';
COMMENT ON COLUMN FormPhone.SubscriberNumber IS 'Unique subscriber number within the NDC area';
