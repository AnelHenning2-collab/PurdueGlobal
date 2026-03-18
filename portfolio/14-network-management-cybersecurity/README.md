# Detailed Assessments of Three Network Management Methods in Labs

**Course:** IT537-02 Introduction to Cybersecurity | Purdue Global University
**Professor:** Dr. Hany Othman
**Programs:** Microsoft Word

**Intent:** Introduction to Cybersecurity — detailed assessments of VLAN configuration, Intrusion Prevention/Detection Systems (IDS/IPS), and Firewall Settings, plus a technical scenario using AI/ML for cybersecurity.

---

## VLAN Configuration (Lesson 3.4)

Configuring Virtual Local Area Networks (VLANs) segments a physical network into multiple logical networks. This segmentation helps manage traffic, improve security, and reduce broadcast domains.

**Network Component:** Physical, on-premises network component with VLAN exploitability.

**Vulnerability:** Can be vulnerable to VLAN hopping attacks when not configured correctly. An attacker exploits misconfigurations to access different VLANs and impact the organization.

**Mitigation:** Implement strict VLAN tags and robust VLAN management protocols. Regular audits and monitoring to detect and prevent VLAN hopping attacks.

---

## Intrusion Prevention and Detection Systems (Lesson 4.2)

IDS monitors network traffic for suspicious activities and potential threats. IPS monitors and can proactively block malicious traffic.

**Exploitability:** Evasion techniques target attackers that craft traffic to bypass detection. New unknown threats challenge signature-based systems.

**Risk Mitigation:** Regularly update IDS/IPS signatures, employ combination of signature-based and anomaly-based detection. Continuous monitoring and tuning reduce false positives.

---

## Configuring Firewall Settings (Lesson 4.3)

Security devices that monitor and control incoming and outgoing network traffic. Acts as barrier between trusted and untrusted networks based on predetermined security rules.

**Exploitability:** Firewalls can be bypassed via misconfigurations, outdated firmware, or sophisticated attacks (tunneling, protocol-based attacks).

**Role:** First layer of defense against external threats.

---

## Technical Scenario — AI/ML in Cybersecurity

To improve cybersecurity, use artificial intelligence and machine learning to detect intrusions, protect against malware, and use secure coding practices (Stallings, 2018).

Security policies include: business application security standards, cloud security standards, encryption, and prevention. Vulnerability Management runs as a cycle: plans, discovers, scans, logs, reports, and remediates.

**Configuring SNORT:** Open-source network intrusion detection system — set up rules and policies to check network traffic for suspicious activity.

**Microsoft File Encryption Tools:** Protecting sensitive data at rest, ensuring security and authorized access.

---

## References

- Stallings, W. (2018). *Effective cybersecurity: A guide to using best practices and standards.* Addison-Wesley Professional/Pearson.
- Mahajan, S., Khurana, M., & Estrela, V. V. (2024). *Applying artificial intelligence in cybersecurity analytics and cyber threat detection.* John Wiley & Sons.
- CrowdStrike. (n.d.). Incident response steps. CrowdStrike. https://www.crowdstrike.com/cybersecurity-101/incident-response/incident-response-steps/
- Chapman, D., & Maymi, F. (2024). *Principles of Cybersecurity Operations.* John Wiley & Sons.
- Boyens, Smith & Bartol. (2022). Supply Chain Cybersecurity Risk Management.

---

**Skills:** VLAN configuration · IDS/IPS · Firewall management · SNORT · Vulnerability management · AI/ML in cybersecurity · Incident response · Network segmentation · Anomaly-based detection
