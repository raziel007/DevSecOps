# Threat Modeling: Solaris Care Connect 360

## Workshop Overview

| Aspect | Details |
|--------|---------|
| Duration | 3 Hours |
| Attendees | Care Connect Eng team, Product Managers, DevEx Engineers, DevSecOps Team |

## Scope and Methodology

| Element | Description |
|---------|-------------|
| Scenarios Covered | 1. AI Generated External phishing email utilizing admin credentials<br>2. Attack against Machine Processes and the data lake<br>3. SQL Injection attack<br>4. Insider attack taking Quant algorithms |
| Methodologies Used | - Cyber Attack Killchain<br>- MITRE ATT&CK Framework<br>- STRIDE for control gap assessments |

## Results and Recommendations

| Category | Details |
|----------|---------|
| Risks Identified | 4 High Risks, 1 Medium Risk |
| Controls Required | 1. Regular security audits using ASVS<br>2. Patch management<br>3. Comprehensive employee phishing awareness training<br>4. Web Application Firewall (WAF) implementation<br>5. Multi-factor Authentication (MFA) deployment<br>6. Continuous network traffic monitoring<br>7. Role-based Access Control (RBAC) implementation |

## Detailed Control Recommendations

| Control | Description |
|---------|-------------|
| Security Audits | Conduct regular audits using ASVS, focusing on Solaris Health 360 to detect vulnerabilities and weaknesses |
| Patch Management | Ensure Solaris Health 360 and underlying technologies are up-to-date and protected against known vulnerabilities |
| Phishing Awareness Training | Educate users about phishing risks, identification, and reporting procedures |
| Web Application Firewall | Implement WAF tailored to Solaris Health 360's traffic patterns to monitor and filter malicious activity |
| Multi-factor Authentication | Enhance authentication security to prevent unauthorized access |
| Network Monitoring | Continuously monitor network traffic to detect and respond to suspicious activity |
| Role-based Access Control | Implement RBAC within Solaris Health 360 to limit access to sensitive health data based on user roles and permissions |
