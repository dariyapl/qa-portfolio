# Test Checklist: SauceDemo

## General Information

| Field | Description |
|---|---|
| Application | [SauceDemo](https://www.saucedemo.com/) |
| Testing Type | Manual Functional Testing |
| Testing Approach | Black Box Testing |
| Browser | Google Chrome 158 |
| Operating System | macOS Sonoma |
| Test Date | 17.11.2026 |
| Test Environment | Public Demo Application |
| Test Account | `standard_user` |
| Additional Account | `problem_user` |
| Password | `secret_sauce` (public demo credentials) |

## Test Execution Status

- **Pass** - The actual result matches the expected result.
- **Fail** - The actual result does not match the expected result.
- **Not Run** - The test has not been executed yet.
- **Observation** - Unexpected or questionable behavior that requires clarification.

## 1. Login / Authorization

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| WEB-01 | Login with valid credentials | Pass | User successfully logs in |
| WEB-02 | Login with empty username | Pass | Validation error displayed |
| WEB-03 | Login with empty password | Pass | Validation error displayed |
| WEB-04 | Login with invalid password | Pass | Appropriate error message displayed |
| WEB-05 | Login with locked_out_user | Not Run | Verify account restriction |
| WEB-06 | Logout from the application | Not Run | Verify user returns to the login page |

## 2. Product Catalog

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| WEB-07 | Verify that all 6 products are displayed | Pass | All products displayed |
| WEB-08 | Sort products by Name (A to Z) | Pass | Products sorted alphabetically |
| WEB-09 | Sort products by Name (Z to A) | Pass | Products sorted in reverse alphabetical order |
| WEB-10 | Sort products by Price (Low to High) | Pass | Works for standard_user |
| WEB-11 | Sort products by Price (High to Low) | Pass | Products sorted by descending price |
| WEB-12 | Open product details page | Not Run | Verify correct product information |
| WEB-13 | Verify product name and price on details page | Not Run | Compare information with catalog |
| WEB-14 | Sort products by Price (Low to High) using problem_user | Fail | See BUG-WEB-002 |

## 3. Shopping Cart

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| WEB-15 | Add a product to the cart | Pass | Button changes to Remove |
| WEB-16 | Verify shopping cart badge counter | Pass | Counter increments |
| WEB-17 | Remove a product from the cart | Pass | Product removed |
| WEB-18 | Open shopping cart page | Pass | Cart page opens |
| WEB-19 | Add multiple products to the cart | Not Run | Verify all selected products appear |
| WEB-20 | Remove product from cart page | Not Run | Verify product removal |
| WEB-21 | Continue shopping from cart page | Not Run | Verify navigation to catalog |

## 4. Checkout

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| WEB-22 | Submit checkout with empty First Name | Pass | Validation error displayed |
| WEB-23 | Submit checkout with empty Last Name | Pass | Validation error displayed |
| WEB-24 | Submit checkout with empty Zip/Postal Code | Pass | Validation error displayed |
| WEB-25 | Enter digits in First Name | Observation | Accepted; no explicit format requirement |
| WEB-26 | Enter digits in Last Name | Observation | Accepted; no explicit format requirement |
| WEB-27 | Enter letters in Zip/Postal Code | Observation | May be valid for international postal codes |
| WEB-28 | Complete checkout with valid information | Not Run | Verify successful order completion |
| WEB-29 | Verify correct item subtotal | Not Run | Compare item prices with subtotal |
| WEB-30 | Verify total calculation | Not Run | Check subtotal + tax = total |
| WEB-31 | Cancel checkout | Not Run | Verify navigation and cart state |

## 5. Additional Testing

| ID | Test Scenario | Status | Comments |
|---|---|---|---|
| WEB-32 | Reset application state | Not Run | Verify cart and application state |
| WEB-33 | Refresh page after adding a product to cart | Not Run | Verify cart state after refresh |
| WEB-34 | Check application on a mobile screen size | Not Run | Verify layout and navigation |
| WEB-35 | Check for browser console errors during checkout | Not Run | Record relevant errors if present |

## Known Findings

**BUG-WEB-002 - Product sorting issue**

Product sorting by price (Low to High) does not work as expected when using the `problem_user` account.

**Checkout input validation observations**

The application accepts numeric characters in First Name and Last Name fields. This behavior requires clarification because no explicit input format requirements are provided.

Letters in Zip/Postal Code are accepted. This is not necessarily a defect because alphanumeric postal codes are used in several countries.

## Testing Limitations

- Testing was performed on a public demo application.
- Complete functional requirements were not available.
- Some behaviors require clarification before being classified as defects.
- Cross-browser and physical mobile device testing have not been performed.
- Not Run scenarios are planned checks and are not included in completed test execution results.