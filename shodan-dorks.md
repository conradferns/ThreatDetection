# 🔍 Shodan Dorks Collection

My list of Shodan dorks for finding exposed services, devices, and vulnerabilities.  
-***Please use these responsibly and ensure compliance with all legal regulations.***  
-***⚠️ I am not responsible for any misuse, damage, or harm caused by individuals using these dorks in ways that violate any laws, policies, or terms of service.***  
-***It is the responsibility of each user to ensure that they have proper authorization before accessing or interacting with any systems found through Shodan.***

---

## 📂 General Information
*This section includes dorks to search for basic information across various devices and services.*

- 🌍 `country:` – Returns results by country code (e.g., `country:IN` - lists servers located in India).
- 🏢 `org:` – Filters results by organization (e.g., `org:Google` - finds systems indexed under Google).
- 🌐 `hostname:` – Filters results by hostname (e.g., `hostname:nascar.com` - finds entries with a hostname of `nascar.com`).
- 🏢 `product:` - Search for specific vendors or software (e.g., `product:citrix` - shows Citrix devices).
- 🔓 `has_vuln:` - Shows vulnerable devices (e.g., `port:80 has_vuln:1` - finds web servers with vulnerabilities).
- 📛 `vuln:` - Search by CVE number (e.g., `vuln:CVE-2015-0204` - finds devices with the FREAK vulnerability).
- 🖥️ `os:` - Filters results based on operating system (e.g., `os:ubuntu` - finds Ubuntu devices).
- 📄 `http:` - Filters by values in the HTTP response (e.g., `http.status:200` - finds pages returning a 200 status code).
- 🛠️ `http.html:` - Finds results with specific keywords in the HTML (e.g., `http.html:login` - finds pages with "login" in the HTML).
- 🧩 `https.component:` - Filters by web components (e.g., `https.component:"php"` - finds hosts that use PHP).
- 📸 `has_screenshot:` - Finds results with screenshots (e.g., `port:22 has_screenshot:1` - lists devices with port 22 open and a screenshot available).
- 🏷️ `tag:` - Searches by Shodan tags (e.g., `tag:c2` - finds likely command and control servers).
- 🔐 `ssl:` - Filters by SSL parameters like CN, JARM, or cert issuer (e.g., `ssl:fifa` - finds hosts with "fifa" in the SSL certificate).
- 🖼️ `http.favicon.hash:` - Finds websites with a particular favicon (e.g., `http.favicon.hash:-2057558656` - finds sites with Microsoft’s favicon).
- 📡 `net:` - Search by IP range in CIDR notation (e.g., `net:X.X.X.X/16` - searches a /16 subnet).
- 🔌 `port:` - Searches for specific ports (e.g., `port:21,22` - finds hosts running FTP and/or SSH).
- 🚫 `negation (-) operator:` - Exclude keywords from search (e.g., `port:443 -akamai` - finds devices not using Akamai).

---

### 💡 Useful Tips

- 🔍 **Verify vulnerabilities** – Don't rely solely on Shodan's vulnerability data; always verify with your infra/security teams. Shodan often uses banner data to identify vulnerabilities.
- 🪤 **Beware of honeypots** – Some systems are set up to trap malicious activity, while others may be unsecured unfortunately.
- 🛡️ **Get permission** – Do not attempt to access any vulnerable system without authorization from the system owner.
- 💰 **Paid filters** – Some filters, like `has_vuln`, `vuln`, and `tag`, require a paid Shodan subscription.
- 🔗 **Use multiple queries** – Shodan's results may not cover all devices for a particular filter. For example, `product:citrix` will show limited results compared to all Citrix devices in the wild if you serach based on an IP or domain name.
- 📜 **/history page** – You can view a host's history by appending `/history` to its URL. (e.g., `shodan.io/host/x.x.x.x/history`).

---

Enjoy using your Shodan dorks responsibly! 🎉
