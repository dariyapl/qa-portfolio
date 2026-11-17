# Chrome DevTools Analysis - SauceDemo

## 1. General Information

| Field | Description |
|---|---|
| Application | [SauceDemo](https://www.saucedemo.com/) |
| Testing Type | Web Testing, Network Analysis |
| Tool | Google Chrome DevTools |
| Browser | Google Chrome 158 |
| OS | macOS Sonoma |
| Test Date | 17.11.2026 |
| Feature | Shopping Cart Navigation |

## 2. Objective

The objective of this analysis was to inspect browser network activity during navigation to the shopping cart page.

The analysis focused on:

- HTTP request method
- Response status
- Response headers
- Browser caching behavior
- HTTPS communication

## 3. Test Scenario

**Scenario:** Navigate to the shopping cart after adding a product.

**Preconditions:**
- The SauceDemo website is open.
- The user is logged in.
- At least one product has been added to the shopping cart.

**Steps:**

1. Open Chrome DevTools.
2. Select the Network tab.
3. Navigate to the shopping cart.
4. Locate the recorded request.
5. Inspect the request method, status, and response headers.

## 4. Network Request Analysis

The following data was collected using Chrome DevTools during shopping cart navigation.

### 4.1. Request Details

| Parameter | Observed Value |
|---|---|
| Request URL | `https://www.saucedemo.com/?/cart.html` |
| Request Method | GET |
| Status Code | 200 OK |
| Remote Address | 185.199.111.153:443 |
| Content-Type | text/html; charset=utf-8 |
| Content-Encoding | gzip |
| Server | GitHub.com |
| Referrer Policy | strict-origin-when-cross-origin |
| User-Agent | Chrome 157, Android 16, Pixel 10 (mobile profile) |

### 4.2. HTTP Response Analysis

The request returned HTTP status code `200 OK`, indicating that the requested resource was successfully retrieved.

The response contained HTML content, as indicated by the `Content-Type` header.

The response was compressed using gzip.

However, a successful HTTP response does not confirm that all shopping cart functionality works correctly.

### 4.3. Cache Analysis

The response included the following headers:

- `cache-control: max-age=600`
- `x-cache: HIT`
- `x-proxy-cache: HIT`
- `age: 529`
- `via: 1.1 varnish`

The Cache-Control header specifies a freshness lifetime of 600 seconds.

The `x-cache: HIT` value indicates that a caching layer served the response from its cache.

This is different from browser disk caching. Disabling browser caching in DevTools does not necessarily disable CDN caching.

### 4.4. Request URL Observation

The recorded request URL was:

`https://www.saucedemo.com/?/cart.html`

The Referer header contained:

`https://www.saucedemo.com/cart.html`

The two URLs have different formats.

The reason for this difference has not yet been confirmed. It may be related to the application's routing or hosting configuration.

This behavior is documented as an observation, not a confirmed defect.

### 4.5. Mobile Environment

The request included a mobile User-Agent corresponding to:

- Browser: Google Chrome 157
- OS profile: Android 16
- Device profile: Pixel 10

These values describe the browser's reported client environment and do not independently prove testing on a physical device.

### 4.6. Result

**Status:** Completed

The GET request returned HTTP `200 OK`.

Response headers, content type, compression, caching behavior, and request metadata were analyzed.

No confirmed functional defect was identified from this request alone.

## 5. Analysis Limitations

The original test execution has several limitations:

- The recorded response was served through a CDN cache.
- A fresh response from the origin server was not confirmed.
- The behavior of the origin server was not verified during this request.
- The Add to Cart action itself was not analyzed.
- No confirmed API request related to cart changes was documented.
- Browser storage behavior was not investigated.
- The response body was not documented.
- The relationship between the recorded URL and the shopping cart route requires further inspection.

These limitations prevent conclusions about the application's complete cart implementation.

## 6. Planned Additional Checks

The following table summarizes completed and planned checks.

| ID | Area | Check | Status |
|---|---|---|---|
| DEV-01 | Network | Repeat cart navigation with Disable cache enabled | Completed |
| DEV-02 | Network | Compare request URL with browser address bar | Not Run |
| DEV-03 | Network | Inspect response type and response body | Partially Completed |
| DEV-04 | Network | Check whether Add to Cart triggers an HTTP request | Not Run |
| DEV-05 | Console | Check for JavaScript errors during cart operations | Pass |
| DEV-06 | Application | Inspect storage changes after adding a product | Not Run |
| DEV-07 | Network | Inspect requests during login | Not Run |

## Console Analysis

**Tool:** Chrome DevTools → Console

**Test Scenario:** Add a product to the shopping cart and navigate to the cart page.

**Steps Performed:**
1. Opened Chrome DevTools.
2. Navigated to the Console tab.
3. Cleared previous console messages.
4. Added a product to the shopping cart.
5. Opened the shopping cart page.
6. Checked for JavaScript errors.

**Actual Result:**

No JavaScript errors were displayed in the Console during the tested scenario.

**Status:** Pass

**Conclusion:**

No browser console errors were observed during the tested shopping cart interactions. This does not guarantee that the application is free from JavaScript defects.

## 7. Conclusion

Chrome DevTools was used to inspect a GET request recorded during shopping cart navigation in SauceDemo.

The analysis identified a successful cached response, an HTTPS request URL, and a Cache-Control header with a 600-second freshness lifetime.

The results demonstrate basic HTTP request inspection and browser cache analysis.

Additional testing is required to investigate cart state management, live network behavior, browser storage, and possible JavaScript errors.

No confirmed application defect was identified during this network analysis.