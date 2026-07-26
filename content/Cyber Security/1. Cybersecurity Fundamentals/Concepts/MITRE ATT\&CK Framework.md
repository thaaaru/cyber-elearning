---
title: "MITRE ATT&CK Framework"
tags: ["frameworks", "attack-framework", "tactics-techniques"]
---

# MITRE ATT&CK Framework

The MITRE Adversarial Tactics, Techniques, and Common Knowledge (ATT&CK) is a globally-accessible knowledge base of adversary tactics and techniques based on real-world observations.

## Framework Structure

**Tactics:** High-level attack objectives (what attackers are trying to accomplish)
- Reconnaissance
- Resource Development
- Initial Access
- Execution
- Persistence
- Privilege Escalation
- Defense Evasion
- Credential Access
- Discovery
- Lateral Movement
- Collection
- Command and Control
- Exfiltration
- Impact

**Techniques:** Detailed methods used by adversaries to achieve a tactic
**Sub-techniques:** More specific variations of techniques

## Practical Applications

**For Red Teams:**
- Understanding attacker TTPs (Tactics, Techniques, Procedures)
- Planning realistic penetration tests
- Identifying attack paths and objectives

**For Blue Teams:**
- Mapping defensive capabilities against threats
- Creating detection rules for known techniques
- Prioritizing security investments
- Incident response and threat hunting

## Advantage Over Cyber Kill Chain

| Aspect | Kill Chain | ATT&CK |
|--------|-----------|--------|
| Phases | 7 linear phases | 14+ non-linear tactics |
| Granularity | Broad stages | Specific techniques (200+) |
| Context | General attack flow | Real-world adversary behavior |
| Mapping | High-level | Detailed to specific tools/malware |

## Getting Started

- **ATT&CK Matrix:** Visit https://attack.mitre.org
- **ATT&CK for Enterprise:** Windows, macOS, Linux tactics and techniques
- **ATT&CK for Mobile:** Android, iOS specific attacks
- **Navigate by Tactic or Adversary** to understand specific attack patterns
