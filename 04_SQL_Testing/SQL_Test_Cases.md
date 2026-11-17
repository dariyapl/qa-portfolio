# SQL Test Cases - Online Store Database

## 1. General Information

| Field | Description |
|---|---|
| Project | Online Store Database |
| Database | SQLite |
| Testing Type | Manual Database Testing |
| Tool | DB Browser for SQLite |
| Test Date | 17.11.2026 |
| Total Test Cases | 10 |
| Test Data | Synthetic test data |

## 2. Testing Objective

The objective of SQL testing was to verify data retrieval, filtering, relationships between tables, aggregate calculations, and basic data integrity in an online store database.

Testing was performed using manually executed SQL queries.

## 3. Test Cases

### SQL-01 - Retrieve All Customers

**Objective:** Verify that customer records can be retrieved.

**Steps:**
1. Open the test database in DB Browser for SQLite.
2. Execute the SQL-01 query from `SQL_Queries.sql`.
3. Check the returned customer records.

**Expected Result:** 3 customer records are returned.

**Actual Result:** 3 customer records returned.

**Status:** Pass

### SQL-02 - Find Products With Low Stock

**Objective:** Verify that products with fewer than 10 units in stock are identified correctly.

**Steps:**
1. Execute SQL-02.
2. Review the products returned by the query.

**Expected Result:** One product is returned: Monitor, Stock = 5.

**Actual Result:** Monitor, Stock = 5.

**Status:** Pass

### SQL-03 - Retrieve Completed Orders

**Objective:** Verify filtering by order status.

**Steps:**
1. Execute SQL-03.
2. Check the returned order IDs and statuses.

**Expected Result:** Two completed orders, IDs 1 and 3.

**Actual Result:** Orders 1 and 3 returned.

**Status:** Pass

### SQL-04 - Verify Orders and Customer Relationships

**Objective:** Verify that orders are associated with the correct customers.

**Steps:**
1. Execute SQL-04.
2. Compare order IDs with customer information.

**Expected Result:** 4 records with matching customer information.

**Actual Result:** 4 matching records returned.

**Status:** Pass

### SQL-05 - Verify Order Total Calculations

**Objective:** Verify the calculation of order totals using product prices and quantities.

**Steps:**
1. Execute SQL-05.
2. Compare calculated totals with the expected values.

**Expected Result:**

| Order ID | Total Amount |
|---|---:|
| 1 | 26000 |
| 2 | 1200 |
| 3 | 6000 |
| 4 | 500 |

**Actual Result:** All four totals matched the expected values.

**Status:** Pass

### SQL-06 - Find Customers With Multiple Orders

**Objective:** Verify aggregation and filtering using GROUP BY and HAVING.

**Steps:**
1. Execute SQL-06.
2. Check customers with more than one order.

**Expected Result:** Anna Kovalenko has 2 orders.

**Actual Result:** One matching customer returned.

**Status:** Pass

### SQL-07 - Check Duplicate Customer Emails

**Objective:** Verify that duplicate email addresses are not present.

**Steps:**
1. Execute SQL-07.
2. Check whether any duplicate groups are returned.

**Expected Result:** 0 rows.

**Actual Result:** 0 rows.

**Status:** Pass

### SQL-08 - Check Orders With Invalid Customer References

**Objective:** Identify orders that reference a non-existing customer.

**Steps:**
1. Execute SQL-08.
2. Review any returned order records.

**Expected Result:** 0 rows.

**Actual Result:** 0 rows.

**Status:** Pass

### SQL-09 - Check Invalid Product Prices and Stock

**Objective:** Identify products with non-positive prices or negative stock values.

**Steps:**
1. Execute SQL-09.
2. Review products that violate the defined validation conditions.

**Expected Result:** 0 rows.

**Actual Result:** 0 rows.

**Status:** Pass

### SQL-10 - Check Orders Without Items

**Objective:** Identify orders with no associated order items.

**Steps:**
1. Execute SQL-10.
2. Review any returned order IDs.

**Expected Result:** 0 rows.

**Actual Result:** 0 rows.

**Status:** Pass

## 4. Test Execution Summary

| Metric | Value |
|---|---:|
| Total Test Cases | 10 |
| Passed | 10 |
| Failed | 0 |
| Blocked | 0 |
| Not Run | 0 |

## 5. Notes

- All queries were executed manually in DB Browser for SQLite.
- Tests were performed using a small database with synthetic data.
- Empty results in SQL-07 through SQL-10 indicate that no matching issues were found in the current dataset.
- No automated SQL tests were used.
- The tests validate the existing data only and do not provide complete coverage of database constraints or application business rules.