##Shodan Hunting Ideas
---
1) Hunting for Phishing Pages i.e. Microsoft pages
```
http.favicon.hash:-2057558656 -org:"Microsoft Corp" -org:"Azure"
```
* Here's a list of websites that have the Microsoft favicon but dont belong to Microsoft Corp or Azure.
* Such suspicious websites can be proactively blocked
  
![image](https://github.com/user-attachments/assets/69655ee7-9d56-4391-b2a8-ca453cf116a4)
---
---
2) Hunting for RDP Boxes using legacy os
```
has_screenshot:1 port:3389 country:in os:"Windows Server 2012 R2"
```
* We can look for Legacy operating systems with RDP exposed to the web (nightmare)
* Some of these systems could just as well be honeypots
  
![image](https://github.com/user-attachments/assets/a6aa6319-4d4f-4ed3-8da0-7c91f57d982f)
--- 
---
3) Hunting for C2 Panels

```
http.favicon.hash:-111783006
```
* There are many ways to hunt for C2 panels. here's 2 simple ways a) You could use the `tag:c2` filter (paid) b) search for the favicon hashes of popular C2 panels
* Here's a list of favicon hashes https://github.com/sansatart/scrapts/blob/master/shodan-favicon-hashes.csv
---

4) Hunt for Vulnerable infrastructure
```
has_vuln:1 product:ivanti
```
* You can use the `vuln:` filter if you know the exact vulnerability or if you're casually hunting you can use the `has_vuln:` filter (both these options are paid)
* Yes, there might be someone with a 9.8 vuln out there 🙈

![image](https://github.com/user-attachments/assets/3c3ee663-e13c-43f0-82fb-b75fd64a47da)
---
