# Subscription-Retention-Analytics

## 📌 Project Overview
This project analyzes user retention, churn behavior, and revenue performance in a subscription-based product. \
The goal is to understand user lifecycle patterns and identify opportunities to improve retention and reduce churn.

---

## 🎯 Business Problem
Subscription-based businesses rely heavily on retaining users and minimizing churn. This project aims to answer:

- What is the retention rate of users over time?
- Which users are most likely to churn?
- What factors contribute to user retention?
- How does user behavior impact subscription renewal?

---

## 📊 Data Description
The dataset simulates a subscription-based platform and includes:

- Users: user demographics and signup information  
- Subscriptions: subscription lifecycle and status  
- Events: user activity and engagement behavior  
- Payments: subscription revenue and billing data  

---

## 📊 Retention Analysis

To understand user engagement over time, I conducted a cohort-based retention analysis.

- Users were grouped into cohorts based on signup week  
- Retention was defined as users returning and performing events (e.g., login, view)  
- Weekly retention was calculated to measure how engagement declines over time  

## Key Approach
- Built cohort and activity tables using SQL  
- Calculated time difference between signup and activity  
- Aggregated retained users by cohort and time period  
- Computed retention rate as retained users divided by cohort size  

## Why This Matters
Retention is a critical metric for subscription-based products, as it directly impacts long-term growth and revenue.

---

## 📈 Key Metrics
- Retention rate  
- Churn rate  
- Monthly recurring revenue (MRR)  
- Customer lifetime value (LTV)  
- Engagement metrics  

---

## 📊 Dashboard (Coming Soon)
Dashboard will include:

- Retention cohort analysis  
- Churn trends  
- Revenue breakdown  
- User segmentation  

---

## 🚀 Insights (Coming Soon)
Key findings and business recommendations will be added after analysis.

---
## 📌 Retro Case Study: User Engagement & Retention

To apply this analytical framework to a real-world product, I explored how similar retention and engagement strategies could be applied to Retro, a social platform focused on memory sharing and meaningful interactions.

### 🎯 Key Question
How can Retro improve user retention and long-term engagement in a social product driven by interaction and content sharing?

### 🔍 Key Hypotheses
- Early user interaction (within the first few days) is critical for long-term retention  
- Reciprocal engagement (comments, reactions) increases user stickiness  
- Users who only consume content without interacting are more likely to churn  

### 🧱 Analytical Approach
Using a similar SQL-based framework:

- Cohort analysis to track user retention over time  
- Segmentation of users based on engagement level  
- Identification of at-risk users based on inactivity  

### 💡 Potential Recommendations
- Strengthen early onboarding interactions to encourage engagement  
- Increase reciprocal interaction through notifications or prompts  
- Implement re-engagement strategies for inactive users  
