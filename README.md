# SQL Business Analysis – CRM Leads

## Overview
This project demonstrates how SQL can be used to analyze CRM lead data and generate actionable insights for sales and marketing stakeholders.

## Business Questions
1. Which lead sources generate the highest volume of leads?
2. How has lead volume trended over time?
3. Which industries contribute the most leads?
4. Which countries generate the highest number of leads?
5. What proportion of leads are missing key contact information?

## Dataset
- Source: Dataset sourced from the output of the CRM Data Cleaning & Validation project.
- Records: X
- Format: CSV

## Dataset Schema

| Column Name    | Description              |
|----------------|--------------------------|
| lead_id        | Unique lead identifier   |
| email          | Lead email address       |
| first_name     | Lead first name          |
| last_name      | Lead last name           |
| company        | Company name             |
| job_title      | Lead job title           |
| industry       | Industry classification  |
| lead_source    | Lead acquisition channel |
| created_date   | Lead creation date       |
| country        | Country of origin        |
| employee_count | Company size             |
| phone          | Contact phone number     |

## Tools Used
- SQL

## Assumptions & Limitations
- Dataset represents a simulated CRM export for demonstration purposes
- Lead conversion and revenue data are not included
- Analysis focuses on volume and data completeness rather than performance outcomes


## Query-to-Insight Mapping

| Business Question      | SQL Output           | Business Use                  |
|------------------------|----------------------|-------------------------------|
| Lead volume by source  | Count by lead_source | Marketing budget allocation   |
| Monthly lead trend     | Leads per month      | Pipeline forecasting          |
| Industry distribution  | Count by industry    | Target segment prioritization |
| Country distribution   | Count by country     | Regional planning             |
| Missing phone analysis | % missing phone      | Sales follow-up efficiency    |

## Key Insights
- Website and paid advertising channels generate the majority of inbound leads.
- Lead volume shows consistent monthly trends, supporting predictable pipeline planning.
- Technology and Healthcare are the most represented industries.
- A minimal percentage of leads lack phone numbers, indicating potential follow-up challenges for sales teams.

