# Test Design Techniques - SauceDemo

## 1. General Information

| Field | Description |
|---|---|
| Application | [SauceDemo](https://www.saucedemo.com/) |
| Testing Type | Manual Functional Testing |
| Testing Approach | Black Box Testing |
| Techniques | Equivalence Partitioning, Boundary Value Analysis, Decision Table Testing |
| Test Environment | Google Chrome, macOS |
| Test Execution Status | Test scenarios designed; execution pending |

## 2. Equivalence Partitioning (EP)

**Objective:** Divide input data into groups that are expected to produce similar application behavior.

### Feature: Login Form

The login form contains two fields: Username and Password.

The following equivalence classes are used to test authentication.

| Class ID | Input Class | Test Data | Expected Result |
|---|---|---|---|
| EP-01 | Valid username and password | `standard_user` / `secret_sauce` | Successful login |
| EP-02 | Empty username | empty / `secret_sauce` | Required field error |
| EP-03 | Empty password | `standard_user` / empty | Required field error |
| EP-04 | Invalid password | `standard_user` / `wrong123` | Authentication error |
| EP-05 | Locked account | `locked_out_user` / `secret_sauce` | Access denied |
| EP-06 | Both fields empty | empty / empty | Validation error |

**Explanation:**

Instead of testing many random usernames and passwords, representative values are selected from different input classes.

This approach helps reduce unnecessary test cases while covering important authentication scenarios.

## 3. Boundary Value Analysis (BVA)

**Objective:** Test values near the boundaries of an input condition.

### Feature: Checkout - First Name

The First Name field is required.

Because the application does not provide a documented maximum length, testing focuses on the known empty/non-empty boundary.

| Test ID | Input | Length | Expected Result |
|---|---|---:|---|
| BVA-01 | empty | 0 | Required field error |
| BVA-02 | `A` | 1 | No required-field error |
| BVA-03 | `An` | 2 | No required-field error |

**Preconditions:**
- The user is logged in.
- At least one product is added to the cart.
- The Checkout: Your Information page is open.
- Valid Last Name and Zip/Postal Code values are provided.

**Explanation:**

The most important boundary is between an empty value and a value containing at least one character.

The purpose of these tests is to verify required-field behavior, not to confirm the validity of all possible names.

**Limitation:**

The maximum supported length is unknown. Maximum-length BVA should be added only after the requirements or an agreed testing limit are available.

## 4. Decision Table Testing

**Objective:** Verify application behavior under different combinations of conditions.

### Feature: Login

**Conditions:**

- C1: Username is provided.
- C2: Password is provided.
- C3: Credentials are valid.
- C4: Account is locked.

**Actions:**

- A1: Display required-field error.
- A2: Display authentication error.
- A3: Display locked-account error.
- A4: Allow login.

| Conditions / Actions | R1  | R2  | R3 | R4 | R5 |
|---|-----|-----|---|---|---|
| Username provided | No  | Yes | Yes | Yes | Yes |
| Password provided | Yes | No  | Yes | Yes | Yes |
| Credentials valid | -   | -   | No | Yes | Yes |
| Account locked | -   | -   | No | Yes | No |
| **A1: Required-field error** | Yes | Yes | No | No | No |
| **A2: Authentication error** | No  | No  | Yes | No | No |
| **A3: Locked-account error** | No  | No  | No | Yes | No |
| **A4: Allow login** | No  | No  | No | No | Yes |

**Legend:** `-` means the condition does not affect the expected action for that rule.

**Explanation:**

The decision table helps organize login scenarios based on combinations of input conditions.

It also makes it easier to identify missing scenarios and expected system responses.

## 5. Test Execution Plan

| Scenario | Technique | Status |
|---|---|---|
| Valid and invalid login credentials | Equivalence Partitioning | Not Run |
| Empty login fields | Equivalence Partitioning | Not Run |
| Locked account login | Equivalence Partitioning | Not Run |
| First Name length: 0, 1, 2 | Boundary Value Analysis | Not Run |
| Login condition combinations | Decision Table Testing | Not Run |

## 6. Conclusion

Three test design techniques were applied to create structured test scenarios for the SauceDemo application.

- **Equivalence Partitioning** was used to group authentication inputs.
- **Boundary Value Analysis** was used to examine the empty/non-empty boundary of a required checkout field.
- **Decision Table Testing** was used to analyze login conditions and expected actions.

These techniques help select test data systematically, improve functional coverage, and reduce unnecessary test duplication.

The tables document test design. Execution results should be recorded separately after the planned tests are performed.