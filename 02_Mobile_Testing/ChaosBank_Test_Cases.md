# Test Cases - ChaosBank (iOS)

## 1. General Information

| Field | Description                       |
|---|-----------------------------------|
| Application | ChaosBank                         |
| Platform | iOS                               |
| Testing Type | Manual Mobile Application Testing |
| Testing Approach | Black Box Testing                 |
| Test Environment | Xcode iOS Simulator               |
| Device | iPhone 18 Pro (Simulator)         |
| iOS Version | 26.3                              |
| Application Version | v1                                |

## 2. Test Execution Status

- **Pass** - The actual result matches the expected result.
- **Fail** - The actual result does not match the expected result.
- **Not Run** - The test case has not been executed.

The Pass results below are based on previously documented checklist results. Exact test data and execution details should be confirmed when the scenarios are repeated.

---

## TC-MOB-001: Login with Valid Credentials

**Priority:** High  
**Related Checklist ID:** MOB-02  
**Status:** Pass (previously recorded)

### Preconditions

- The application is installed and launched.
- The user is logged out.
- A valid test account is available.

### Test Data

- Username: valid test username
- Password: valid test password

### Test Steps

1. Open the ChaosBank application.
2. Navigate to the Login screen.
3. Enter a valid username.
4. Enter the corresponding password.
5. Tap the Login button.

### Expected Result

The user successfully logs in and is redirected to the main application screen.

### Actual Result

The original checklist records successful login with valid credentials. The exact input values were not documented.

---

## TC-MOB-002: Login with Invalid Credentials

**Priority:** High  
**Related Checklist ID:** MOB-03  
**Status:** Not Run

### Preconditions

- The application is launched.
- The user is logged out.

### Test Data

- Username: invalid test username
- Password: invalid test password

### Test Steps

1. Open the Login screen.
2. Enter an invalid username.
3. Enter an invalid password.
4. Tap the Login button.
5. Observe the application response.

### Expected Result

The application rejects invalid credentials, displays an appropriate authentication error, and does not grant access to the account.

### Actual Result

Not tested yet.

---

## TC-MOB-003: Login Using Face ID

**Priority:** High  
**Related Checklist ID:** MOB-04  
**Status:** Pass (previously recorded)

### Preconditions

- The application supports biometric authentication.
- A valid test account is available.
- Face ID authentication is configured in the simulator, if supported by the application.

### Test Steps

1. Launch the ChaosBank application.
2. Navigate to the biometric authentication flow.
3. Trigger Face ID authentication.
4. Simulate successful biometric authentication.
5. Observe the application response.

### Expected Result

The application accepts successful biometric authentication and grants access to the authorized account.

### Actual Result

The original checklist records successful simulated biometric authentication. Detailed steps and simulator settings were not documented.

---

## TC-MOB-004: Registration with Numeric-Only Username

**Priority:** Medium  
**Related Checklist ID:** MOB-05  
**Status:** Observation

### Preconditions

- The application is launched.
- The user is on the Sign Up screen.

### Test Data

- Username: `12345`
- Other required fields: valid test data

### Test Steps

1. Open the Sign Up screen.
2. Enter `12345` in the Username field.
3. Complete the remaining required fields with valid test data.
4. Tap the Sign Up button.
5. Observe the registration result.

### Expected Result

The expected behavior depends on the application's username validation requirements.

If numeric-only usernames are allowed, registration may proceed.

If they are prohibited, the application should display an appropriate validation error.

### Actual Result

According to the previous test execution, the application accepted the numeric-only username without a validation error.

### Related Finding

OBS-MOB-001 - Username format requirements need clarification.

---

## TC-MOB-005: Transfer Money with Valid Data

**Priority:** High  
**Related Checklist ID:** MOB-08  
**Status:** Pass (previously recorded)

### Preconditions

- The user is logged in.
- The user has sufficient test funds.
- The money transfer feature is available.

### Test Data

- Recipient: valid test recipient
- Amount: positive amount within the available test balance

### Test Steps

1. Open the money transfer feature.
2. Select or enter a valid recipient.
3. Enter a valid transfer amount.
4. Review the entered information.
5. Confirm the transfer.
6. Observe the result.

### Expected Result

The application completes the transfer and displays a confirmation of the successful operation.

### Actual Result

The original checklist records that a transfer with valid data was completed successfully. The exact recipient, amount, and transaction details were not documented.

---

## TC-MOB-006: Transfer with Insufficient Funds

**Priority:** High  
**Related Checklist ID:** MOB-09  
**Status:** Pass (previously recorded)

### Preconditions

- The user is logged in.
- The available account balance is known.
- The transfer feature is available.

### Test Data

- Recipient: valid test recipient
- Amount: greater than the available test balance

### Test Steps

1. Open the money transfer feature.
2. Select a valid recipient.
3. Enter an amount greater than the available balance.
4. Attempt to confirm the transfer.
5. Observe the application response.

### Expected Result

The application rejects the transfer and displays an appropriate message about insufficient funds.

No money should be deducted from the account.

### Actual Result

The original checklist records that the transfer was rejected. The exact error message and balance after the attempt were not documented.

---

## TC-MOB-007: Verify Balance After Successful Transfer

**Priority:** High  
**Related Checklist ID:** MOB-23  
**Status:** Not Run

### Preconditions

- The user is logged in.
- A valid test recipient is available.
- The account contains sufficient test funds.
- The initial account balance is recorded.

### Test Steps

1. Record the current account balance.
2. Open the money transfer feature.
3. Enter valid transfer details.
4. Confirm the transfer.
5. Return to the account dashboard.
6. Check the updated balance.

### Expected Result

The account balance is updated correctly after the successful transfer.

The deducted amount matches the transfer amount and any applicable fees.

### Actual Result

Not tested yet.

---

## TC-MOB-008: Transfer with Zero Amount

**Priority:** High  
**Related Checklist ID:** MOB-20  
**Status:** Not Run

### Preconditions

- The user is logged in.
- The money transfer feature is available.

### Test Data

- Recipient: valid test recipient
- Amount: `0`

### Test Steps

1. Open the money transfer feature.
2. Select a valid recipient.
3. Enter `0` as the transfer amount.
4. Attempt to confirm the transfer.
5. Observe the application response.

### Expected Result

The application rejects the zero-amount transfer and displays an appropriate validation message.

No transaction should be created, and the account balance should remain unchanged.

### Actual Result

Not tested yet.

---

## TC-MOB-009: Application State After Backgrounding

**Priority:** Medium  
**Related Checklist ID:** MOB-10  
**Status:** Pass (previously recorded)

### Preconditions

- The application is launched.
- The user is logged in.

### Test Steps

1. Open the main application screen.
2. Move the application to the background.
3. Return to the application.
4. Observe the displayed screen and application state.

### Expected Result

The application resumes without crashing.

The application state and authentication behavior should follow the defined session requirements.

### Actual Result

The original checklist records that the application state was preserved after returning from the background. Detailed session timing was not documented.

---

## TC-MOB-010: Network Interruption During Money Transfer

**Priority:** High  
**Related Checklist ID:** MOB-25  
**Status:** Not Run

### Preconditions

- The user is logged in.
- The account contains sufficient test funds.
- A valid test recipient is available.
- Network connectivity can be controlled in the test environment.

### Test Steps

1. Open the money transfer feature.
2. Enter a valid recipient and transfer amount.
3. Interrupt the network connection immediately before submitting the transfer.
4. Attempt to confirm the transfer.
5. Observe the application response.
6. Restore the network connection.
7. Check the account balance and transaction history.

### Expected Result

The application handles the network interruption without crashing.

It should not incorrectly report that the transfer succeeded when the operation has not been confirmed.

After network recovery, the user should be able to determine the actual transaction status.

The application should not create an unintended duplicate transaction.

### Actual Result

Not tested yet.

---

## 3. Test Execution Summary

| Status | Count |
|---|---:|
| Pass (previously recorded) | 5 |
| Fail | 0 |
| Observation | 1 |
| Not Run | 4 |
| **Total** | **10** |

Previously recorded Pass results require confirmation against the exact test steps and test data in this document.

The newly designed scenarios have not been executed.

## 4. Testing Limitations

- Testing was performed using Xcode iOS Simulator.
- Physical device testing was not performed.
- Complete functional requirements were unavailable.
- Exact test data for some previous executions was not recorded.
- Network interruption and transaction consistency scenarios remain untested.
- Session timeout behavior requires additional verification.

## 5. Conclusion

Ten test cases were documented for the ChaosBank iOS application.

The scenarios cover authentication, registration, money transfers, balance verification, background behavior, and network interruption handling.

Five scenarios are based on previously recorded successful checks, one is classified as an observation requiring clarification, and four remain untested.

Additional execution is required to evaluate the reliability of financial operations and mobile-specific application behavior.