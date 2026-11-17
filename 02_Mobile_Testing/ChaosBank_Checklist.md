# Test Checklist - ChaosBank (iOS)

## 1. General Information

| Field | Description |
|---|---|
| Application | ChaosBank |
| Platform | iOS |
| Testing Type | Manual Mobile Application Testing |
| Testing Approach | Black Box Testing |
| Device | iPhone 18 Pro (Xcode Simulator) |
| iOS Version | 26.3 |
| App Version | 1.0 |
| Original Test Date | 17.11.2026 |
| Physical Device Testing | Not performed |

## 2. Test Execution Status

- **Pass** - The actual result matches the expected result.
- **Fail** - The actual result does not match the expected result.
- **Observation** - Behavior requiring clarification.
- **Not Run** - The test has not been executed.

Previously recorded results are preserved. Newly added scenarios are marked as Not Run.

## 3. Authentication and Onboarding

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| MOB-01 | Launch application successfully | Pass | App launches without crashing |
| MOB-02 | Login with valid credentials | Pass | Login successful |
| MOB-03 | Login with invalid credentials | Not Run | Verify error message |
| MOB-04 | Login using Face ID | Pass | Simulated biometric authentication |
| MOB-15 | Login with empty fields | Not Run | Verify required-field validation |
| MOB-16 | Cancel biometric authentication | Not Run | Verify fallback behavior |
| MOB-17 | Logout from application | Not Run | Verify session termination |

## 4. Registration

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| MOB-05 | Sign up using numeric-only username | Observation | Accepted; username rules require clarification |
| MOB-18 | Submit registration with empty required fields | Not Run | Verify validation |
| MOB-19 | Register with an existing username | Not Run | Verify duplicate handling |

## 5. Core Banking Functionality

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| MOB-06 | Verify balance is displayed on dashboard | Pass | Balance displayed |
| MOB-07 | Scroll transaction history | Pass | Scrolling works |
| MOB-08 | Transfer money with valid data | Pass | Transfer completed |
| MOB-09 | Transfer with insufficient funds | Pass | Transfer rejected |
| MOB-20 | Transfer with zero amount | Not Run | Verify validation |
| MOB-21 | Transfer with negative amount | Not Run | Verify validation |
| MOB-22 | Submit transfer twice quickly | Not Run | Check for duplicate transactions |
| MOB-23 | Verify balance after successful transfer | Not Run | Verify balance change |
| MOB-24 | Verify transaction history after transfer | Not Run | Verify transaction record |

## 6. Mobile-Specific Testing

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| MOB-10 | Minimize and reopen the application | Pass | App state preserved in the original test |
| MOB-11 | Receive an incoming call during app usage | Not Run | Requires a physical device or suitable test setup |
| MOB-12 | Display push notifications | Not Run | Requires notification configuration |
| MOB-25 | Disable network during app usage | Not Run | Verify offline handling |
| MOB-26 | Restore network connection | Not Run | Verify recovery |
| MOB-27 | Close and relaunch application | Not Run | Verify application state |
| MOB-28 | Change device orientation | Not Run | Check supported orientations and UI behavior |

## 7. UI and Navigation

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| MOB-13 | Verify keyboard does not cover critical buttons | Pass | No issue recorded |
| MOB-14 | Verify swipe-back gesture | Pass | Worked in previously tested navigation |
| MOB-29 | Verify text and buttons on different screen sizes | Not Run | Check layout and readability |
| MOB-30 | Verify validation messages are readable | Not Run | Check visibility and clarity |

## 8. Known Findings

### OBS-MOB-001 - Numeric Username Registration

The application accepts a numeric-only username (`12345`) during registration.

This behavior requires clarification because username format requirements are unavailable.

It is not classified as a confirmed defect.

## 9. Testing Limitations

- Testing was performed using Xcode iOS Simulator.
- Testing on a physical iPhone was not performed.
- Complete functional requirements were unavailable.
- Incoming calls were not tested.
- Push notification behavior was not verified.
- Network interruption scenarios have not been executed.
- Newly added scenarios remain untested.

## 10. Conclusion

The checklist covers authentication, registration, core banking functionality, mobile-specific behavior, and UI navigation.

Previously executed checks are documented separately from newly planned scenarios.

Additional testing is required to evaluate network handling, transaction consistency, session behavior, and device compatibility.