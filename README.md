
# Database Structure

## Abstract
This repository showcases our database structure, adhering to the principles of database normalization up to the Fifth Normal Form (5NF). Our approach minimizes redundancy, enhances data integrity, and ensures efficient data management. Each table is designed with a specific purpose, maintaining clear separation and referential integrity.

## Table of Contents
- [FormPhone](#formphone)
- [FormEmail](#formemail)
- [FormPerson](#formperson)
- [FormPassword](#formpassword)
- [ResourceEnum](#resourceenum)
- [ReverseEnumConfirmation](#reverseenumconfirmation)
- [ReverseEnumAttributeState](#reverseenumattributestate)
- [ConfirmationEmailCode](#confirmationemailcode)
- [AttributeUser](#attributeuser)

## Tables and Scripts

### FormPhone
**Purpose**: Stores phone number information, divided into country code, national destination code, and subscriber number.  
**5NF Analysis**: Each field represents a single, indivisible value, eliminating redundant data and transitive dependencies.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/form.phone.sql]

### FormEmail
**Purpose**: Holds email addresses, separated into local and domain parts, aligning with standard email format.  
**5NF Analysis**: Splits email data into atomic elements, ensuring no unnecessary duplication.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/form.email.sql]

### FormPerson
**Purpose**: Manages personal information like names, structured for future expansion.  
**5NF Analysis**: Designed for minimal redundancy, focusing on unique personal identifiers.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/form.name.sql]

### FormPassword
**Purpose**: Securely stores encrypted user passwords.  
**5NF Analysis**: Each record is distinct and independent, with no multi-valued dependencies.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/form.password.sql]

### ResourceEnum
**Purpose**: Centralizes enumeration values used across the system, ensuring consistency.  
**5NF Analysis**: Eliminates redundancy by separating enums into a dedicated table.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/resource.enum.sql]

### ReverseEnumConfirmation
**Purpose**: Maps enumeration values to confirmation states, facilitating reverse integer encoding.  
**5NF Analysis**: Reflects a specific join dependency based on candidate keys, in line with 5NF.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/reverse.enum.confirmation.sql]

### ReverseEnumAttributeState
**Purpose**: Relates enumeration values to attribute states (e.g., active, inactive).  
**5NF Analysis**: Adheres to 5NF by managing attribute states in a separate table, reducing redundancy.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/reverse.enum.attribute.state.sql]

### ConfirmationEmailCode
**Purpose**: Links confirmation codes with email IDs, tracking their status and expiration.  
**5NF Analysis**: Each field is a unique entity, with no redundant information, upholding 5NF principles.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/confirmation.email.code.sql]

### AttributeUser
**Purpose**: Integrates various user attributes (phone, email, personal info) into a unified structure.  
**5NF Analysis**: Maintains distinct user attributes in separate tables, avoiding redundant data storage.  
**Script**: [https://github.com/berkerAa/arch-database/blob/main/sql/scripts/create/attribute.user.sql]

## Contribution
Contributions are welcome. Please fork the repo, make your changes, and submit a pull request for review.
