# Negative API Testing - Restful Booker

## 1. General Information

| Field | Description |
|---|---|
| API | Restful Booker |
| Base URL | https://restful-booker.herokuapp.com |
| Testing Type | Manual Negative API Testing |
| Tool | Postman |
| Test Date | 17.11.2026 |
| Execution | Manual |

## 2. Test Execution Results

| Test ID | Test Scenario | Actual HTTP Status | Result |
|---|---|---|---|
| API-10 | Create booking without totalprice | 500 Internal Server Error | Observation |
| API-11 | Update booking without authentication | 403 Forbidden | Pass |
| API-12 | Get non-existing booking | 404 Not Found | Pass |

## 3. API-10 - Create Booking Without Required Field

**Method:** POST  
**Endpoint:** `/booking`

### Test Data

The request body did not contain the `totalprice` field.

### Expected Result

The API should handle the incomplete request without an unhandled server error.

A client error response, such as HTTP 400 or 422, would generally be appropriate if `totalprice` is a required field.

The exact expected status requires confirmation against the API specification.

### Actual Result

HTTP 500 Internal Server Error.

### Classification

Observation - Unexpected Server Error.

### Notes

The server returned an internal error when processing an incomplete booking request.

This behavior may indicate insufficient input validation or error handling.

Further investigation is required before classifying the behavior as a confirmed defect.

## 4. API-11 - Update Booking Without Authentication

**Method:** PUT  
**Endpoint:** `/booking/{id}`

### Test Conditions

- An existing test booking ID was used.
- No authentication token was included.
- A valid JSON request body was provided.

### Expected Result

The API rejects the unauthorized update request.

### Actual Result

HTTP 403 Forbidden.

### Status

Pass - The API rejected the unauthorized request.

### Additional Verification

A follow-up GET request is recommended to confirm that the booking data was not modified.

## 5. API-12 - Get Non-Existing Booking

**Method:** GET  
**Endpoint:** `/booking/999999999`

### Expected Result

The API returns HTTP 404 Not Found if the booking does not exist.

### Actual Result

HTTP 404 Not Found.

### Status

Pass.

## 6. Conclusion

Three negative API scenarios were executed using Postman.

Two requests returned the expected HTTP status codes.

One request returned HTTP 500 Internal Server Error when a booking was created without the `totalprice` field.

The unexpected response requires further investigation and clarification of the API validation requirements.

No automated test scripts were used. All responses were inspected manually.