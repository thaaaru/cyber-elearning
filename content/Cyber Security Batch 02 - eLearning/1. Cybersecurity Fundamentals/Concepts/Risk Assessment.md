---
title: "Risk Assessment"
tags: ["risk-management", "qualitative", "quantitative"]
---

# Risk Assessment

Risk Assessment is the process of identifying, analyzing, and evaluating security risks to an organization's information systems and data.

## Risk Formula

**Risk = Asset Value × Threat Probability × Vulnerability Impact**

Or simplified: **Risk = Likelihood × Impact**

## Five-Step Risk Assessment Process

### Step 1: Identify Assets
**What are we protecting?**

Examples:
- Physical servers and infrastructure
- Data (customer, financial, intellectual property)
- Applications and software
- Personnel and knowledge
- Brand reputation

**Output:** Asset inventory with classifications and values

---

### Step 2: Identify Threats
**What could harm the assets?**

Categories:
- **Cyber Threats:** Malware, ransomware, hacking, phishing
- **Physical Threats:** Theft, natural disasters, fire
- **Environmental:** Power outages, hardware failure
- **Human:** Negligence, insider threats, user error

**Output:** Threat inventory with descriptions and actors

---

### Step 3: Identify Vulnerabilities
**What weaknesses can be exploited?**

Examples:
- Unpatched software
- Weak passwords
- Misconfigured systems
- Lack of encryption
- Poor access controls
- Social engineering susceptibility

**Output:** Vulnerability assessment results (manual or automated scan)

---

### Step 4: Determine Likelihood and Impact
**How probable is the threat, and how severe would the impact be?**

**Likelihood Levels:**
- Low: 1-25% probability
- Medium: 26-50%
- High: 51-75%
- Critical: 76-100%

**Impact Levels:**
- Low: Minor inconvenience, easily recoverable
- Medium: Operational disruption, data loss
- High: Significant financial loss, regulatory violations
- Critical: Business closure, severe legal consequences

**Example Risk Matrix:**

|  | Low Impact | Medium Impact | High Impact | Critical |
|---|-----------|--------------|-----------|----------|
| **High Likelihood** | Medium Risk | High Risk | Very High | Critical |
| **Medium Likelihood** | Low Risk | Medium Risk | High Risk | Very High |
| **Low Likelihood** | Low Risk | Low Risk | Medium Risk | High Risk |

---

### Step 5: Calculate Risk Level
**Assign priority and mitigation strategy**

**Risk Levels:**
- **Low:** Monitor, document
- **Medium:** Plan mitigation, allocate resources
- **High:** Immediate action required
- **Critical:** Emergency response

**Example:**
- Asset: Customer database
- Threat: SQL injection attack
- Vulnerability: Unpatched web application
- Likelihood: Medium (common attack vector)
- Impact: Critical (PII exposure, compliance violation)
- **Risk: HIGH** → Requires immediate patching

## Qualitative vs. Quantitative Assessment

**Qualitative:**
- Uses descriptive ratings (Low, Medium, High)
- Less mathematically rigorous
- Useful for resource-constrained organizations
- Faster to conduct

**Quantitative:**
- Uses numerical values and calculations
- More precise but data-intensive
- Requires historical breach data
- Better for large organizations with resources

## Risk Treatment Options

1. **Mitigate:** Reduce risk through controls (most common)
2. **Transfer:** Use insurance or outsourcing
3. **Accept:** Accept the risk (when cost of mitigation > benefit)
4. **Avoid:** Eliminate the risk (e.g., discontinue service)

## Continuous Reassessment

Risk assessment is not one-time:
- Threats evolve constantly
- New vulnerabilities discovered regularly
- Business changes create new risks
- Controls may degrade over time

Organizations should perform formal risk assessments annually, with continuous monitoring of key risks.
