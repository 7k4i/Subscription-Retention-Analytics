# Data Schema

This project simulates a subscription-based product to analyze user retention, churn, and engagement.

---

## Users Table
- user_id: unique user identifier  
- signup_date: date the user signed up  
- country: user location  
- acquisition_channel: source of acquisition  

---

## Subscriptions Table
- subscription_id: unique subscription identifier  
- user_id: linked user  
- start_date: subscription start date  
- end_date: subscription end date  
- status: active or canceled  
- plan_type: subscription tier  

---

## Events Table
- event_id: unique event identifier  
- user_id: linked user  
- event_date: date of activity  
- event_type: login, view, click  

---

## Payments Table (Optional)
- payment_id: unique payment identifier  
- user_id: linked user  
- payment_date: payment date  
- amount: transaction amount  
- billing_cycle: monthly or yearly  
