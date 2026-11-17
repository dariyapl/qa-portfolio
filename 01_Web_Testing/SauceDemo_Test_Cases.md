# Test Cases: SauceDemo

## General Information

| Field | Description |
|---|---|
| Application | [SauceDemo](https://www.saucedemo.com/) |
| Testing Type | Manual Functional Testing |
| Testing Approach | Black Box Testing |
| Test Environment | Google Chrome 158, macOS Sonoma |
| Test Account | `standard_user` |
| Password | `secret_sauce` (public demo credentials) |

## Test Execution Status

- **Pass**  Actual result matches the expected result.
- **Fail**  Actual result does not match the expected result.
- **Not Run**  Test case has not been executed.

---

## TC-WEB-001: Successful Login

**Priority:** High  
**Related Checklist ID:** WEB-01  
**Status:** Pass

**Preconditions:**
- The SauceDemo login page is open.
- The user is not logged in.

**Test Data:**
- Username: `standard_user`
- Password: `secret_sauce`

**Test Steps:**

1. Enter `standard_user` in the Username field.
2. Enter `secret_sauce` in the Password field.
3. Click the Login button.

**Expected Result:**

The user is successfully logged in and redirected to the Products page.

**Actual Result:**

The user successfully logged in.

---

## TC-WEB-002: Login with Empty Username

**Priority:** High  
**Related Checklist ID:** WEB-02  
**Status:** Pass

**Preconditions:**
- The SauceDemo login page is open.

**Test Data:**
- Username: empty
- Password: `secret_sauce`

**Test Steps:**

1. Leave the Username field empty.
2. Enter `secret_sauce` in the Password field.
3. Click the Login button.

**Expected Result:**

The system displays a validation error and does not allow the user to log in.

**Actual Result:**

A validation error was displayed.

---

## TC-WEB-003: Login with Locked User

**Priority:** High  
**Related Checklist ID:** WEB-05  
**Status:** Not Run

**Preconditions:**
- The SauceDemo login page is open.

**Test Data:**
- Username: `locked_out_user`
- Password: `secret_sauce`

**Test Steps:**

1. Enter `locked_out_user` in the Username field.
2. Enter `secret_sauce` in the Password field.
3. Click the Login button.

**Expected Result:**

The system displays an error indicating that the user is locked out. Access to the Products page is denied.

**Actual Result:**

Not tested yet.

---

## TC-WEB-004: Sort Products by Price (Low to High)

**Priority:** Medium  
**Related Checklist ID:** WEB-10  
**Status:** Pass

**Preconditions:**
- The user is logged in as `standard_user`.
- The Products page is open.

**Test Steps:**

1. Locate the sorting dropdown.
2. Select "Price (low to high)".
3. Check the order of product prices.

**Expected Result:**

Products are displayed in ascending order by price.

**Actual Result:**

Products were sorted by price in ascending order.

---

## TC-WEB-005: Open Product Details Page

**Priority:** Medium  
**Related Checklist ID:** WEB-12, WEB-13  
**Status:** Not Run

**Preconditions:**
- The user is logged in as `standard_user`.
- The Products page is open.

**Test Steps:**

1. Find the "Sauce Labs Backpack" product.
2. Click its product name.
3. Check the product details page.
4. Compare the product name and price with the catalog.

**Expected Result:**

The product details page opens and displays the correct product name, description, price, and image.

The product name and price match the information displayed in the catalog.

**Actual Result:**

Not tested yet.

---

## TC-WEB-006: Add Product to Shopping Cart

**Priority:** High  
**Related Checklist ID:** WEB-15, WEB-16  
**Status:** Pass

**Preconditions:**
- The user is logged in as `standard_user`.
- The Products page is open.
- The shopping cart is empty.

**Test Steps:**

1. Find the "Sauce Labs Backpack" product.
2. Click "Add to cart".
3. Check the cart badge.
4. Check the product button.

**Expected Result:**

- The product is added to the cart.
- The cart badge displays `1`.
- The button changes from "Add to cart" to "Remove".

**Actual Result:**

The product was added to the cart, the badge counter increased, and the button changed to "Remove".

---

## TC-WEB-007: Remove Product from Shopping Cart

**Priority:** High  
**Related Checklist ID:** WEB-17  
**Status:** Not Run

**Preconditions:**
- The user is logged in as `standard_user`.
- The "Sauce Labs Backpack" product is added to the cart.
- The cart contains only this product.

**Test Steps:**

1. Click the shopping cart icon.
2. Verify that "Sauce Labs Backpack" is displayed.
3. Click the "Remove" button.
4. Check the cart contents and cart badge.

**Expected Result:**

The product is removed from the shopping cart.

The cart is empty, and the cart badge is no longer displayed.

**Actual Result:**

Not tested in this exact scenario yet.

---

## TC-WEB-008: Checkout with Empty First Name

**Priority:** High  
**Related Checklist ID:** WEB-22  
**Status:** Pass

**Preconditions:**
- The user is logged in as `standard_user`.
- At least one product is added to the shopping cart.
- The Checkout: Your Information page is open.

**Test Data:**
- First Name: empty
- Last Name: `Smith`
- Zip/Postal Code: `12345`

**Test Steps:**

1. Leave the First Name field empty.
2. Enter `Smith` in the Last Name field.
3. Enter `12345` in the Zip/Postal Code field.
4. Click "Continue".

**Expected Result:**

The system displays a validation error indicating that First Name is required.

The user remains on the checkout information page.

**Actual Result:**

A validation error was displayed for the empty First Name field. The exact message was not recorded.

---

## TC-WEB-009: Complete Checkout with Valid Information

**Priority:** High  
**Related Checklist ID:** WEB-28  
**Status:** Not Run

**Preconditions:**
- The user is logged in as `standard_user`.
- The shopping cart contains one product.

**Test Data:**
- First Name: `John`
- Last Name: `Smith`
- Zip/Postal Code: `12345`

**Test Steps:**

1. Open the shopping cart.
2. Click "Checkout".
3. Fill in all required fields with valid data.
4. Click "Continue".
5. Verify that the Checkout: Overview page is displayed.
6. Click "Finish".

**Expected Result:**

The order is successfully completed.

The application displays the Checkout: Complete page with the message "Thank you for your order!".

**Actual Result:**

Not tested yet.

---

## TC-WEB-010: Verify Checkout Total Calculation

**Priority:** High  
**Related Checklist ID:** WEB-29, WEB-30  
**Status:** Not Run

**Preconditions:**
- The user is logged in as `standard_user`.
- The shopping cart contains the following products:
    - Sauce Labs Backpack
    - Sauce Labs Bike Light
- The Checkout: Overview page is open.

**Test Steps:**

1. Check the price of each product.
2. Calculate the expected subtotal.
3. Compare the calculated subtotal with "Item total".
4. Check the displayed tax.
5. Calculate the expected total by adding the subtotal and tax.
6. Compare the calculated result with the displayed "Total".

**Expected Result:**

The Item total equals the sum of individual product prices.

The Total equals Item total plus the displayed Tax.

All monetary values are displayed consistently.

**Actual Result:**

Not tested yet.

---

## Test Execution Summary

| Status | Count |
|---|---:|
| Pass | 5 |
| Fail | 0 |
| Not Run | 5 |
| Total | 10 |

**Note:** Pass results are based on previously documented checklist executions. Some original test records do not contain complete input data or exact error messages. These details should be confirmed during the next execution.

## Testing Notes

These test cases cover selected functional scenarios for SauceDemo.

They are not intended to provide complete application coverage.

Additional testing is required for logout, session handling, responsive design, checkout cancellation, and application state management.