# API Test Report - Restful Booker

## 1. General Information

| Field | Description |
|---|---|
| Project | Restful Booker API |
| Base URL | https://restful-booker.herokuapp.com |
| Testing Type | Manual API Testing |
| Testing Approach | Black Box Testing |
| Tool | Postman |
| Test Date | 17.11.2026 |
| Automation | Not used |
| Test Status | Partially Completed |

## 2. Testing Objective

The objective of this testing was to verify the main REST API operations related to booking management and identify potential issues in request validation and error handling.

The testing focused on HTTP methods, response status codes, JSON data, authentication, and booking lifecycle operations.

## 3. Scope of Testing

The following functionality was included:

- Retrieving bookings using GET requests
- Creating bookings using POST requests
- Generating an authentication token
- Updating booking information using PUT
- Partially updating booking information using PATCH
- Deleting bookings using DELETE
- Checking deleted and non-existing bookings
- Testing invalid and incomplete request data
- Testing requests without authentication

## 4. Test Execution Results

| Test ID | Method | Test Scenario | Result |
|---|---|---|---|
| API-01 | GET | Get all bookings | Pass (previously recorded) |
| API-02 | POST | Create booking | Pass |
| API-03 | POST | Create booking with invalid dates | Observation |
| API-04 | GET | Get booking by ID | Pass |
| API-05 | POST | Generate authentication token | Completed, response not documented |
| API-06 | PUT | Update existing booking | Completed, exact response not documented |
| API-07 | PATCH | Partially update booking | Reported as completed, verification pending |
| API-08 | DELETE | Delete existing booking | Reported as completed |
| API-09 | GET | Verify booking deletion | Reported as completed |
| API-10 | POST | Create booking without totalprice | Observation |
| API-11 | PUT | Update booking without authentication | Pass |
| API-12 | GET | Get non-existing booking | Pass |

### Execution Notes

The results are based on manual testing in Postman.

Some responses were confirmed through screenshots, while others were reported during testing without complete response details.

These scenarios should be rechecked before assigning final Pass or Fail statuses.

## 5. Positive Testing Results

### API-02 - Create Booking

**Method:** POST  
**Endpoint:** `/booking`  
**Status:** Pass

A booking was successfully created using valid JSON data.

**Observed HTTP Status:** 200 OK  
**Booking ID:** 596

The response contained the expected booking fields and values.

### API-04 - Get Booking by ID

**Method:** GET  
**Endpoint:** `/booking/596`  
**Status:** Pass

**Observed HTTP Status:** 200 OK

The response contained booking information matching the previously created booking.

### Booking Update Operations

PUT and PATCH requests were performed during testing.

The update operations should be documented with their exact response status codes and follow-up GET verification before final execution results are assigned.

### Booking Deletion

The DELETE and follow-up GET scenarios were reported as completed.

The exact response codes should be recorded in the test evidence.

## 6. Negative Testing Results

| Test ID | Scenario | Actual HTTP Status | Classification |
|---|---|---|---|
| API-03 | Create booking with invalid dates | 200 OK | Observation |
| API-10 | Create booking without totalprice | 500 Internal Server Error | Observation |
| API-11 | Update without authentication | 403 Forbidden | Pass |
| API-12 | Get non-existing booking | 404 Not Found | Pass |

### API-03 - Invalid Booking Dates

The API accepted a booking request containing invalid dates and returned HTTP 200 OK.

This behavior requires clarification against the API specification before it can be classified as a confirmed defect.

### API-10 - Missing Required Field

The API returned HTTP 500 Internal Server Error when the `totalprice` field was omitted.

This may indicate insufficient request validation or error handling.

Further investigation is required to determine the expected behavior.

### API-11 - Unauthorized Update

The API returned HTTP 403 Forbidden when an update request was sent without authentication.

The request was rejected as expected.

### API-12 - Non-Existing Booking

The API returned HTTP 404 Not Found when a non-existing booking ID was requested.

The response was consistent with the expected behavior.

## 7. Findings Summary

| Finding ID | Description | Classification |
|---|---|---|
| OBS-API-001 | Invalid booking dates accepted | Requirement Clarification |
| OBS-API-002 | Missing totalprice returns HTTP 500 | Potential Error Handling Issue |

No additional confirmed defects were documented during this execution.

## 8. Testing Limitations

- API testing was performed manually using Postman.
- No automated Postman assertions were used.
- Some request and response details were not recorded.
- Complete API validation requirements were not available.
- Public test data may change or be reset.
- Load and performance testing were not performed.
- Authentication and authorization coverage was limited.

## 9. Risks and Recommendations

Potential risks include incomplete input validation, inconsistent error handling, and insufficient verification of booking changes.

Recommended next steps:

1. Recheck scenarios with incomplete response evidence.
2. Repeat the invalid-date and missing-field tests.
3. Confirm expected validation behavior against API documentation.
4. Verify that unauthorized update attempts do not modify stored data.
5. Export the Postman Collection for reproducibility.
6. Extend negative testing to additional invalid input values.

## 10. Conclusion

Manual API testing was performed for the Restful Booker booking management API.

The testing covered positive and negative scenarios, including CRUD operations, authentication, and error handling.

Successful booking creation and retrieval were confirmed, and expected error responses were observed for unauthorized access and non-existing resources.

Two observations were documented regarding input validation and server error handling.
Some execution results require additional confirmation before the testing can be considered fully documented.

**Overall Assessment:** The API testing activities demonstrate basic practical skills in REST API testing, HTTP methods, JSON validation, and negative test design. Further verification is recommended to improve coverage and reliability of the test report.