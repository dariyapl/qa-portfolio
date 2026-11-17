# Manual QA Portfolio

Hi! I'm an aspiring Junior Manual QA Engineer.

This portfolio includes my practice projects in web, mobile, API, and SQL testing. Here you can find test cases, checklists, bug reports, and test results.

## Skills and Tools

**Testing:**
- Functional, positive, and negative testing
- Test cases and checklists
- Bug reporting
- Test design techniques
- API testing
- Basic SQL testing

**Tools:** Postman, Chrome DevTools, DB Browser for SQLite, Xcode iOS Simulator, Git, GitHub

## Projects

### 1. Web Testing - SauceDemo

**Application:** [SauceDemo](https://www.saucedemo.com/)

I tested login, product sorting, shopping cart functionality, and checkout form validation.

I also used Chrome DevTools to inspect HTTP requests and responses.

**What I prepared:**
- 35 checklist scenarios
- 10 detailed test cases
- Bug reports and observations
- Test design examples
- DevTools analysis and test summary report

**Result:** Testing is partially completed. One product sorting issue was documented for the `problem_user` account, along with observations requiring clarification.

[View Web Testing Project](01_Web_Testing/)

### 2. Mobile Testing - ChaosBank

**Application:** ChaosBank (iOS)

I worked with an iOS simulator to test login, registration, Face ID, money transfers, and basic app navigation.

**What I prepared:**
- 30 checklist scenarios
- 10 detailed test cases
- Registration validation observation
- Test summary report

**Result:** Some scenarios were executed, while others are documented for future testing. The registration observation requires clarification of username validation rules.

[View Mobile Testing Project](02_Mobile_Testing/)

### 3. API Testing - Restful Booker

**API:** [Restful Booker](https://restful-booker.herokuapp.com/)

I used Postman to test booking creation, retrieval, updates, deletion, and authentication.

I also checked how the API handles invalid dates, missing fields, and requests without authorization.

**What I prepared:**
- Postman Collection with 12 API scenarios
- API Test Report
- Negative Testing Report

**Result:** The API returned HTTP 500 when creating a booking without the `totalprice` field. I documented this as a potential error-handling issue that requires further investigation. Some test results still need additional verification.

[View API Testing Project](03_API_Testing/)

### 4. SQL Testing - Online Store Database

**Database:** SQLite

I created a small test database with customers, products, orders, and order items.

Using SQL, I checked table relationships, order totals, duplicate emails, invalid values, and missing records.

**What I prepared:**
- 10 SQL queries
- SQL test cases
- SQL test report
- SQLite test database

**Result:** All 10 queries returned the expected results.

[View SQL Testing Project](04_SQL_Testing/)

## Notes

These projects were created for learning and practice. Some test scenarios are documented but have not yet been executed.

All API and SQL tests were performed manually.

## Contact

- **LinkedIn:** [My LinkedIn Profile](https://www.linkedin.com/in/dariya-polova-432484324)
- **Email:** polovadariya@gmail.com
- **Telegram:** @dariya_pl