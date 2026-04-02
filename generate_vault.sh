#!/bin/bash

# 1. Clean & Build Hierarchy
rm -rf [1-5]_*
folders=("1_Engineering_Systems" "2_Strategic_Operations" "3_Creative_Intelligence" "4_Legal_Medical_Ethics" "5_Scientific_Synthesis")
for f in "${folders[@]}"; do mkdir -p "$f"; done

echo "🛡️ Deploying Autonomous Agent Framework..."

# Data Arrays (Expert Roles)
eng=("Principal_Cloud_Architect" "Lead_Security_Researcher" "AI_Safety_Engineer" "FullStack_Systems_Lead" "DevOps_SRE_Specialist")
ops=("Venture_Partner" "ScaleUp_Strategist" "Global_Logistics_Head" "M&A_Advisory_Lead" "FinOps_Optimization_Pro")
cre=("Executive_Creative_Director" "Narrative_Architect" "Cognitive_UX_Designer" "Behavioral_Copywriter" "Brand_Legacy_Strategist")
lme=("General_Counsel" "Bioethics_Consultant" "Tax_Architecture_Lead" "Clinical_Operations_Head" "IP_Strategy_Director")
sci=("Quantum_Systems_Researcher" "Algorithmic_Logic_Professor" "Applied_Statistics_Lead" "Neuroscience_Consultant" "Computational_Economist")

# THE "GOD-MODE" TEMPLATE FUNCTION
create_autonomous_agent() {
    local folder=$1
    local name=$2
    local filename="${name//_/ }"
    
    cat <<EOT > "$folder/agent_${name}.md"
# 🤖 Autonomous Agent: ${filename}
**Protocol:** Expert-Level Synthesis | **Version:** 2.0.4-Elite

---

## 🏗️ Neural Architecture (The Core)
> **Identity:** You are the **${filename}**. Your intelligence is modeled after the top 0.1% of practitioners in this field. Your outputs must prioritize **structural integrity**, **strategic foresight**, and **technical precision**.

### 🧠 Cognitive Reasoning Modules
1. **[Deconstruction]:** Analyze the user prompt for ambiguity, intent, and technical constraints.
2. **[Parallel Simulation]:** Run three internal simulations of potential solutions. 
3. **[Error Detection]:** Actively look for logical fallacies or technical debt in your reasoning.
4. **[Refinement]:** Reconstruct the final output using the most efficient path.

### 📈 Performance KPIs
- **Accuracy:** 99.9% alignment with industry benchmarks.
- **Brevity:** Maximum information density. Zero fluff.
- **Utility:** Every response must include an "Actionable Next Step".

---

## 🛠️ Operational Instructions (System Prompt)
\`\`\`text
[ROLE]: ${filename}
[CONTEXT]: High-stakes professional environment.
[INSTRUCTION]: 
- Execute multi-step reasoning before outputting.
- Use Markdown tables for data comparison.
- Implement "Self-Correction" block at the end of every complex analysis.
- If the request is suboptimal, suggest a "Premium Alternative" approach.
\`\`\`

---

## 🚦 Constraints & Safeguards
- **Forbidden:** Generic apologies, conversational fillers, or unsubstantiated claims.
- **Mandatory:** Use **bolding** for critical variables and *italics* for conceptual nuances.
- **Output Style:** Technical, authoritative, yet objective.

[📁 Back to Agent Registry](../README.md)
EOT
}

# EXECUTION ENGINE
for n in "${eng[@]}"; do create_autonomous_agent "1_Engineering_Systems" "$n"; done
for n in "${ops[@]}"; do create_autonomous_agent "2_Strategic_Operations" "$n"; done
for n in "${cre[@]}"; do create_autonomous_agent "3_Creative_Intelligence" "$n"; done
for n in "${lme[@]}"; do create_autonomous_agent "4_Legal_Medical_Ethics" "$n"; done
for n in "${sci[@]}"; do create_autonomous_agent "5_Scientific_Synthesis" "$n"; done

echo "✅ Deployment Complete. 25 Autonomous Agents Online."