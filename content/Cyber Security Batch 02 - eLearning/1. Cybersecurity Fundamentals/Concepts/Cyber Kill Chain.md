---
title: "Cyber Kill Chain"
description: "Lockheed Martin's framework for understanding attack methodology"
tags: ["attack-framework", "incident-response"]
---

# Cyber Kill Chain

The Cyber Kill Chain is a framework developed by Lockheed Martin that describes the lifecycle of a cyber attack. It helps defenders understand and interrupt attack progression at various stages.

## 7 Phases of the Kill Chain

### 1. Reconnaissance
**Attacker Goal:** Gather information about the target

**Activities:**
- Public information gathering (Google, WHOIS, DNS lookups)
- Social media research on employees
- Identifying technology infrastructure (Shodan, Censys)
- Port scanning and enumeration
- Building attack profile

**Defender Response:**
- Monitor for unusual external scanning activity
- Implement OSINT monitoring
- Educate employees on social engineering risks

---

### 2. Weaponization
**Attacker Goal:** Create malicious payload

**Activities:**
- Develop custom malware or configure existing tools
- Combine exploits with delivery mechanisms
- Create phishing emails with malicious attachments
- Backdoor legitimate software

**Example:** Building a malicious .docx file containing an exploit for CVE-2021-40444

**Defender Response:**
- Endpoint protection and behavioral analysis
- Email filtering and attachment sandboxing

---

### 3. Delivery
**Attacker Goal:** Transmit weaponized payload to target

**Methods:**
- **Email:** Phishing with malicious attachments or links
- **Web:** Drive-by downloads, watering hole attacks
- **USB:** Physical delivery of infected media
- **Supply Chain:** Compromising legitimate software distribution

**Defender Response:**
- Email security and multi-factor authentication
- Web proxy filtering
- USB port restrictions
- Software integrity verification

---

### 4. Exploitation
**Attacker Goal:** Trigger the vulnerability

**Activities:**
- Execute payload to gain code execution
- Exploit unpatched software vulnerabilities
- Bypass access controls
- Trigger buffer overflows or other memory exploits

**Example:** Successful execution of PowerShell script from malicious email attachment

**Defender Response:**
- Patch management
- Behavioral analysis for suspicious process execution
- Endpoint Detection & Response (EDR)

---

### 5. Installation
**Attacker Goal:** Establish persistent access

**Activities:**
- Install backdoors for remote access
- Plant rootkits for privilege escalation
- Create hidden user accounts
- Modify system startup configurations

**Defender Response:**
- File integrity monitoring
- Registry monitoring (Windows)
- System log analysis
- Host-based intrusion detection

---

### 6. Command & Control (C2)
**Attacker Goal:** Establish communication channel with infected system

**Activities:**
- Establish encrypted communication with attacker infrastructure
- Receive commands and deliver results
- Data exfiltration setup
- Lateral movement preparation

**Defender Response:**
- Network traffic monitoring and DNS filtering
- Block known C2 infrastructure
- Outbound firewall rules
- Network segmentation

---

### 7. Actions on Objectives
**Attacker Goal:** Achieve ultimate goal

**Possible Objectives:**
- **Data Exfiltration:** Steal intellectual property, PII, credentials
- **Destruction:** Encrypt data (ransomware), delete files, corrupt systems
- **Disruption:** DDoS, business interruption
- **Manipulation:** Modify financial records, tamper with systems

**Defender Response:**
- Data loss prevention (DLP)
- Backup and recovery procedures
- Incident response plan activation
- Forensic investigation

---

## Using the Kill Chain for Defense

The Kill Chain model allows defenders to:
1. **Identify attack patterns** in security logs and alerts
2. **Interrupt the chain** at the earliest possible stage (reconnaissance is cheapest to disrupt)
3. **Create forensic indicators** at each stage
4. **Develop layered defenses** that address multiple phases

**Key Insight:** Every stage can be disrupted with proper controls. The earlier in the chain an attack is detected and stopped, the lower the impact and cost.
