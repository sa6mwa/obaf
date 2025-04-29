# OBAF Examples

> **DISCLAIMER:**  
> The following content was partially generated using **ChatGPT-4o**,
> an AI model developed by OpenAI. While it provides structured and
> well-reasoned examples, human validation and contextual adaptation
> are recommended for critical decision-making.

---

Below are examples of **outcomes**, **purposes**, **constraints**, and
**problem–solution hypotheses** for a wide range of initiatives, all
aligned with the [Outcome-Based Agile Framework (OBAF)](README.md).
Each **outcome** is paired with three discovery-focused hypotheses,
offering potential problem–solution fits that can be tested through
experiments. These hypotheses are designed to help teams challenge
assumptions, learn quickly, and uncover the most effective path to
achieving the desired outcome.

The structure for each initiative is as follows:

- **Outcome** – The measurable change in behavior, performance, or value we aim to achieve.  
- **Purpose** – The strategic or customer-focused reason why this outcome matters.  
- **Constraints** – Design, technical, regulatory, or operational boundaries that shape viable solutions.  
- **Problem–Solution Hypotheses & Experiments** – Assumptions about what might solve the underlying problem, validated through targeted discovery experiments.

---

### 1. **Mobile Banking App Feature**

- **Outcome**: 85% of active users complete a funds transfer in under 90 seconds.
- **Purpose**: Improve customer satisfaction and increase engagement.
- **Constraints**: GDPR/PCI-DSS; iOS/Android minimums; no backend API changes.

**Problem–Solution Fits:**
- *Hypothesis 1*: Users struggle with multi-step UI flow.
  - **Experiment**: A/B test a new 2-tap transfer prototype vs. current 5-step flow.
  - **User Story**: *As a mobile banking user, I want a simplified
    2-tap transfer flow so that I can complete money transfers more
    quickly and with less confusion.*
  - **Acceptance Test**:  
  *Given* a user has payees set up,  
  *When* they use the 2-tap transfer flow,  
  *Then* they complete the transfer in under 90 seconds with fewer than 2 dropouts or errors.
- *Hypothesis 2*: Biometric auth delays task initiation.
  - **Experiment**: Time-to-transfer comparison between biometric vs. passcode auth flows.
- *Hypothesis 3*: Users abandon mid-task due to unclear progress.
  - **Experiment**: Add a visual progress indicator and measure completion rate delta.

The outcome+purpose can be redefined as a **User Story:**  
*As a bank, we want 85% of active users to complete a funds transfer in under 90 seconds in order to improve customer satisfaction and increase app engagement.*

**A Given-When-Then test scenario:**  
*Given a user is logged into the mobile banking app  
When they initiate a funds transfer  
Then the transfer is completed in 90 seconds or less for 85% of transactions*

---

### 2. **IoT Sensor Power Optimization**

- **Outcome**: Reduce sensor power usage by 40%; battery life ≥18 months.
- **Purpose**: Reduce field maintenance costs.
- **Constraints**: 30x30mm PCB, <256KB firmware, CE/FCC compliance.

**Problem–Solution Fits:**
- *Hypothesis 1*: High power draw during idle state.
  - **Experiment**: Prototype with optimized sleep-mode algorithm; measure in lab test bed.
- *Hypothesis 2*: Sensor poll frequency too high for environmental needs.
  - **Experiment**: Adjust sampling rate dynamically; simulate impact on power draw and signal fidelity.
  - **User Story**: As an IoT sensor, I want to dynamically adjust my
    polling frequency based on environmental stability so that I
    conserve battery life without reducing accuracy.
- *Hypothesis 3*: Transmission protocol is inefficient.
  - **Experiment**: Replace MQTT with CoAP and benchmark energy use.

**User Story:**  
*As a hardware manufacturer, we want our field-deployed sensors to
reduce power consumption by 40% so that batteries last 18 months and
lower the cost of field maintenance.*

**Test Scenario:**  
*Given an IoT sensor is deployed with the optimized firmware  
When it operates under standard usage conditions  
Then the battery life exceeds 18 months while data accuracy is preserved*

---

### 3. **Business Expansion: Latin America**

- **Outcome**: 50,000 new Brazilian customers; CAC <$15.
- **Purpose**: Grow international revenue.
- **Constraints**: Local compliance; support Pix & Boleto; $500k budget.

**Problem–Solution Fits:**
- *Hypothesis 1*: Lack of trust in foreign brands.
  - **Experiment**: A/B test local co-branding vs. global branding on landing pages.
- *Hypothesis 2*: Payments are a barrier.
  - **Experiment**: Track conversion rates by payment method availability.
- *Hypothesis 3*: Product not adapted to regional habits.
  - **Experiment**: Conduct 5 in-depth user interviews + remote usability tests in São Paulo.

**User Story:**  
*As a global e-commerce company, we want to acquire 50,000 customers in
Brazil with a CAC under $15 in order to expand market presence and
grow revenue.*

**Test Scenario:**  
*Given a localized marketing campaign is active in Brazil  
When users interact with the landing page and complete sign-up  
Then at least 50,000 users register with CAC ≤ $15*

---

### 4. **Assembly Line Efficiency**

- **Outcome**: Raise units per worker from 110 → 145; no quality drop.
- **Purpose**: Meet demand with stable labor costs.
- **Constraints**: No new hires; 2hr/week training cap; ISO 9001.

**Problem–Solution Fits:**
- *Hypothesis 1*: Manual rework and miscommunication slow throughput.
  - **Experiment**: Pilot digital work instructions with QR-activated SOPs at one station.
- *Hypothesis 2*: Workers lack ergonomic tooling.
  - **Experiment**: Introduce assistive jigs at test cell and measure output + fatigue.
- *Hypothesis 3*: Material handling bottlenecks cause idle time.
  - **Experiment**: Time-motion study + simulation of alternate kanban replenishment strategy.

**User Story:**  
*As a production manager, I want to increase worker output from 110 to
145 units per day without increasing defects, so that we meet rising
demand without adding headcount.*

**Test Scenario:**  
*Given a trained operator uses the new tools and digital work instructions  
When they complete their full shift  
Then they produce at least 145 units with no increase in defect rate*

---

### 5. **Dev Environment Platform**

- **Outcome**: Provisioning time cut from 2h → 10 min.
- **Purpose**: Speed up onboarding and experimentation.
- **Constraints**: Kubernetes, budget neutral, Okta SSO required.

**Problem–Solution Fits:**
- *Hypothesis 1*: Bottlenecks caused by manual config.
  - **Experiment**: Build an Infrastructure-as-Code (IaC) based prototype with Terraform.
- *Hypothesis 2*: Engineers lack visibility into environment readiness.
  - **Experiment**: Add Slack notifications + dashboards to test whether perceived wait time drops.
- *Hypothesis 3*: Too many custom config permutations.
  - **Experiment**: Standardize environment blueprints; measure adoption and provisioning time delta.

**User Story:**  
*As a platform team, we want developers to get a provisioned
environment in under 10 minutes so that they can onboard quickly and
iterate faster.*

**Test Scenario:**  
*Given a new engineer submits a provisioning request  
When the platform processes the request  
Then the development environment is ready to use within 10 minutes*

---

### 6. **AI-Driven Support Triage**

- **Outcome**: AI handles 60% of Tier 1 tickets; ≥90% CSAT.
- **Purpose**: Free agents for complex issues, cut resolution time.
- **Constraints**: Backend schema fixed; English & Spanish support.

**Problem–Solution Fits:**
- *Hypothesis 1*: Common issues not clearly classified for AI.
  - **Experiment**: Use clustering on past tickets to define top 5 AI-handlable categories.
- *Hypothesis 2*: AI tone or phrasing drives dissatisfaction.
  - **Experiment**: A/B test varied AI response styles and monitor CSAT impact.
- *Hypothesis 3*: Customers escalate prematurely due to lack of confidence in AI.
  - **Experiment**: Add “Escalate to human” with short delay prompt and analyze opt-out rates.

**User Story:**  
*As a customer support team, we want our AI to resolve 60% of Tier-1
tickets with ≥90% CSAT so that human agents can focus on complex
issues.*

**Test Scenario:**  
*Given a Tier-1 issue is submitted  
When the AI system analyzes and responds  
Then the issue is resolved automatically and receives CSAT ≥90%*

---

### 7. **Subscription Model Redesign**

- **Outcome**: Raise MRR by 25% within 3 months.
- **Purpose**: Improve revenue predictability.
- **Constraints**: Honor old terms; Stripe billing; auth model untouched.

**Problem–Solution Fits:**
- *Hypothesis 1*: Users don’t understand value of higher tiers.
  - **Experiment**: Test revised plan comparison UI with value-focused messaging.
- *Hypothesis 2*: Price sensitivity varies by segment.
  - **Experiment**: Run pricing elasticity test across cohorts using feature gating.
- *Hypothesis 3*: Freemium is under-leveraged for upsell.
  - **Experiment**: Add premium trials after 3rd successful task in free plan.

**User Story:**  
*As a product manager, I want to increase monthly recurring revenue by
25% within 3 months so that we have more predictable income and higher
customer lifetime value.*

**Test Scenario:**  
*Given a user visits the new pricing page  
When they choose a subscription plan  
Then MRR increases by at least 25% within 3 months of launch*

---

### 8. **Enterprise Firewall Rollout**

- **Outcome**: 99.9% of known threats blocked; <10ms latency.
- **Purpose**: Secure network with minimal user impact.
- **Constraints**: No new hardware; staff neutral; ISO/IEC 27001.

**Problem–Solution Fits:**
- *Hypothesis 1*: Latency is caused by rule overlap.
  - **Experiment**: Analyze and simulate optimized rule set in lab environment.
- *Hypothesis 2*: Current network segmentation increases exposure.
  - **Experiment**: Prototype microsegmentation in DMZ and measure threat isolation improvement.
- *Hypothesis 3*: Logging rate impacts throughput.
  - **Experiment**: Evaluate performance under varied logging verbosity settings.

**User Story:**  
*As an IT administrator, I want to block 99.9% of threats with under
10ms latency so that we maintain security without slowing down the
network.*

**Test Scenario:**  
*Given the new firewall is installed on the network perimeter  
When traffic includes known intrusion attempts  
Then 99.9% are blocked and network latency stays below 10ms*

---

### 9. **CRM Workflow Optimization**

- **Outcome**: Lead report time drops from 3h → 30min.
- **Purpose**: Increase selling time, reduce admin.
- **Constraints**: Must use Salesforce; plugin restrictions; 1-hour training max.

**Problem–Solution Fits:**
- *Hypothesis 1*: Report filters are misaligned with sales workflows.
  - **Experiment**: Co-design and pilot new filter templates with top reps.
- *Hypothesis 2*: Manual copy-pasting of data is the bottleneck.
  - **Experiment**: Prototype auto-generated reports using predefined rules.
- *Hypothesis 3*: Users forget steps or reuse outdated queries.
  - **Experiment**: Introduce guided workflows and measure usage + satisfaction.

**User Story:**  
*As a sales leader, I want reps to create qualified lead reports in
under 30 minutes so they spend more time selling and less time on
admin.*

**Test Scenario:**  
*Given a sales rep uses the enhanced reporting workflow  
When they generate a weekly qualified leads report  
Then the task is completed in 30 minutes or less*

---

### 10. **Data Center Power Usage**

- **Outcome**: Reduce PUE from 1.8 → 1.3 in 9 months.
- **Purpose**: Cut cost and meet ESG goals.
- **Constraints**: $250k capex; no SLA breaches; audit documentation required.

**Problem–Solution Fits:**
- *Hypothesis 1*: Cooling systems are over-provisioned.
  - **Experiment**: Simulate dynamic cooling adjustments with real-time heat maps.
- *Hypothesis 2*: Server underutilization causes excess draw.
  - **Experiment**: Trial compute load balancing via container orchestration.
- *Hypothesis 3*: Night-time idle power usage is too high.
  - **Experiment**: Implement scheduled partial shutdown and monitor overnight usage trends.

**User Story:**  
*As a sustainability lead, I want to reduce PUE from 1.8 to 1.3 so we
can cut operating costs and meet ESG goals.*

**Test Scenario:**  
*Given the power-saving measures are implemented  
When the data centers run under typical workloads  
Then the average PUE is reduced to 1.3 or lower*
