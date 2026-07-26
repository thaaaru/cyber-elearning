---
title: "CIA Triad"
description: "The foundational security model: Confidentiality, Integrity, and Availability"
tags: ["fundamentals", "security-model", "cia"]
---

# CIA Triad

The CIA Triad is the foundational framework in cybersecurity, representing the three core security objectives that protect information systems.

## Confidentiality
**Definition:** Ensuring that information is accessible only to authorized individuals.

**Key Concepts:**
- **Encryption:** Converting plaintext into ciphertext to prevent unauthorized access
- **Access Control:** Limiting who can view sensitive information
- **Steganography:** Hiding information within other data

**Implementation Examples:**
- Password-protected documents and encrypted files
- End-to-end encrypted messaging apps (Signal, WhatsApp)
- File and folder permissions in Windows/Linux

**Real-World Breach:** Equifax (2017) - 147 million individuals' personal and financial data exposed, costing $700M+ in settlements.

---

## Integrity
**Definition:** Ensuring that data has not been altered, corrupted, or tampered with by unauthorized users, and is complete and accurate.

**Key Concepts:**
- **Hashing:** Creating a unique fingerprint of data to detect tampering (MD5, SHA-256)
- **Digital Signatures:** Cryptographic proof of data authenticity and origin
- **Write Protection:** File permissions preventing unauthorized modifications

**Implementation Examples:**
- Checksums for verifying file downloads
- Database transaction logs and audit trails
- Blockchain for immutable records

**Real-World Breach:** Stuxnet (2010) - Modified SCADA industrial control systems to make uranium centrifuges malfunction without operators detecting changes.

---

## Availability
**Definition:** Ensuring that authorized users can access information and resources reliably, whenever needed, without disruption or delays.

**Key Concepts:**
- **Redundancy:** Multiple copies or backup systems (RAID, load balancing)
- **Backups & Recovery:** Regular backups and disaster recovery plans
- **DDoS Mitigation:** Protecting systems from denial-of-service attacks

**Implementation Examples:**
- High-availability database clusters across multiple servers
- Geographic redundancy across data centers
- Network failover systems and backup internet connections

**Real-World Breach:** Dyn DNS Attack (2016) - Major websites (Netflix, Twitter, Spotify, GitHub) went offline for hours due to massive DDoS attack affecting domain name resolution.

---

## Balancing the Triad

Organizations face inherent trade-offs between the three pillars:

| Trade-off | Scenario | Solution |
|-----------|----------|----------|
| **Confidentiality vs. Availability** | Encryption slows access speeds | Use efficient encryption algorithms |
| **All three vs. Cost** | Perfect security is prohibitively expensive | Risk-based approach based on asset value |
| **Integrity vs. Usability** | Constant verification creates friction | Balance with zero-trust principles |

Security professionals must understand these trade-offs to implement balanced solutions aligned with business needs, compliance requirements, and risk tolerance.
