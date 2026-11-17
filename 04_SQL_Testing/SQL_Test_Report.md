# SQL Test Report - Online Store Database

## 1. General Information

| Field | Description |
|---|---|
| Project | Online Store Database |
| Database Management System | SQLite |
| Testing Tool | DB Browser for SQLite |
| Testing Type | Manual Database Testing |
| Test Date | 17.11.2026 |
| Test Environment | Local SQLite database |
| Test Data | Synthetic data |
| Execution Status | Completed |

## 2. Testing Objective

The purpose of testing was to verify that the online store database stores and retrieves information correctly.

The tests focused on data filtering, table relationships, calculations, duplicate detection, and basic data integrity checks.

## 3. Database Overview

The test database contains four tables:

| Table | Description | Initial Records |
|---|---|---:|
| Customers | Customer information | 3 |
| Products | Product information, prices, and stock | 4 |
| Orders | Customer orders | 4 |
| OrderItems | Products included in orders | 5 |

All data was created specifically for testing purposes.

## 4. Test Execution Results

| Test ID | Test Scenario | Expected Result | Status |
|---|---|---|---|
| SQL-01 | Retrieve all customers | 3 records | Pass |
| SQL-02 | Find products with low stock | 1 product | Pass |
| SQL-03 | Retrieve completed orders | 2 orders | Pass |
| SQL-04 | Verify order-customer relationships | 4 matching records | Pass |
| SQL-05 | Calculate order totals | 4 correct totals | Pass |
| SQL-06 | Find customers with multiple orders | 1 customer | Pass |
| SQL-07 | Check duplicate customer emails | 0 rows | Pass |
| SQL-08 | Find invalid customer references | 0 rows | Pass |
| SQL-09 | Find invalid prices or stock | 0 rows | Pass |
| SQL-10 | Find orders without items | 0 rows | Pass |

All 10 queries returned the expected results.

## 5. Findings

### Data Retrieval and Filtering

Customer records, low-stock products, and completed orders were retrieved successfully.

The results matched the expected test data.

### Table Relationships

JOIN queries returned the correct customer information for the existing orders.

No orders referencing non-existing customers were found in the tested dataset.

### Order Total Calculations

Order totals were calculated using product prices and quantities.

All four calculated totals matched the expected values.

### Duplicate and Invalid Data Checks

No duplicate customer emails were found.

No products with invalid prices or negative stock values were found.

No orders without items were found.

These results apply to the current test dataset.

## 6. Defect Summary

| Metric | Count |
|---|---:|
| Confirmed Defects | 0 |
| Failed Checks | 0 |
| Passed Checks | 10 |

No defects were identified during the executed SQL checks.

This does not guarantee that the database is free from defects.

## 7. Testing Limitations

- Testing was performed on a small synthetic dataset.
- No application UI or API was connected to the test database.
- No performance or load testing was performed.
- Database constraints were defined but not independently tested using invalid INSERT or UPDATE operations.
- The tests did not cover concurrent transactions or large datasets.
- No automated SQL assertions were used.

## 8. Recommendations

Further testing could include:

1. Testing UNIQUE, NOT NULL, CHECK, and FOREIGN KEY constraints with invalid data.
2. Checking how the database handles missing and unexpected values.
3. Verifying data consistency after INSERT, UPDATE, and DELETE operations.
4. Testing more complex datasets and additional edge cases.

## 9. Conclusion

Manual SQL testing was completed using DB Browser for SQLite.

All 10 executed queries produced the expected results.

The testing demonstrated practical use of SELECT, WHERE, ORDER BY, JOIN, GROUP BY, HAVING, aggregate functions, and data integrity checks.

No defects were found in the current dataset.

The project demonstrates foundational SQL skills relevant to manual QA testing.