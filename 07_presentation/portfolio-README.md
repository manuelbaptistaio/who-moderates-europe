# Portfolio presentation

[View the slides (PDF)](TikTok%20-%20Portfolio%20Overview.pdf) Â· [Download the editable PowerPoint](TikTok%20-%20Portfolio%20Overview.pptx)

A concise overview of TikTokâ€™s reported decision automation in the Protection of minors category, comparing Januaryâ€“May in 2024, 2025 and 2026.

The presentation leads with the question, methods and findings. Company statements, regulatory scrutiny and employeesâ€™ accounts provide context; the analysis does not establish effects of layoffs, moderation accuracy or child-safety outcomes.

This learning project used AI assistance. Python, MySQL and Tableau were combined deliberately for practice. A fresh end-to-end rerun remains unverified.

## Slide text and notes

### 1. TikTok

- Decision Automation and Protection of Minors
- ?
- Reported Moderation Decisions
- Portfolio overview Â· Januaryâ€“May 2024, 2025 and 2026
- Manuel Baptista


### 2. Research Question

- How did reported decision automation change?
- TikTok Â· Protection of minors
- Januaryâ€“May in 2024, 2025 and 2026
- Source: EU DSA Transparency Database

This exploratory analysis compares reported counts and the share of fully automated decisions in the Protection of minors category. These are matched five-month windows, not full years. The data does not measure unique videos, individual users, moderation accuracy or staffing.

### 3. Data and Method

- TikTok decisions Â· DSA Transparency Database
- Januaryâ€“May Â· 2024, 2025 and 2026
- Decision counts and automation shares
- Python
- â†’
- MySQL
- â†’
- Tableau
- Check and group data
- Compare matching months
- Build the dashboard
- Source: DSA Transparency Database

Source: DSA Transparency Database, https://transparency.dsa.ec.europa.eu/. The project uses prepared aggregate decision counts. Python inspects archives, checks coverage and aggregates counts; MySQL creates a matched-period comparison; Tableau displays results. January through May is compared across 2024, 2025 and 2026. Counts are summed rather than treating each aggregate row as one decision. The presentation focuses on Protection of minors. A fresh clean rerun is not yet verified.

### 4. A Lower Automated Share

- Protection of minors Â· Fully automated decisions
- Januaryâ€“May in each year
- Source: DSA data Â· Prepared Januaryâ€“May comparison

Source: 02_data_clean/tiktok_jan_may_2024_2026_comparison.csv, Protection of minors. Fully automated share equals fully automated decision count divided by all decision counts in that category and matched five-month period, including partially automated decisions. Values: 75.05753570663397%, 39.76472356966639%, 35.01736808452766%. This describes the reported decision method, not moderation quality or staffing.

### 5. Reported Decision Counts

- Protection of minors Â· All automation methods
- 2024
- 28M
- 2025
- 11M
- 2026
- 3M
- Januaryâ€“May Â· Rounded to millions
- Source: DSA data Â· Prepared Januaryâ€“May comparison

Source: 02_data_clean/tiktok_jan_may_2024_2026_comparison.csv. Protection of minors, January through May in each year. Total reported decisions across all automation methods: 2024 27,771,450; 2025 11,041,480; 2026 3,238,987. The 2026 total includes 120 partially automated decisions. M means million. These are decision counts, not unique videos or people, and lower counts do not establish less harmful content or improved safety.

### 6. TikTok Moderation at a Glance

- Januaryâ€“May 2024â€“2026 Â· Interactive version on Tableau Public

Original Tableau dashboard export. January-May comparison across 2024, 2025 and 2026. Monthly counts are above, shares below left, and totals below right. Purple means fully automated and yellow non-automated. The dashboard uses more precise labels than the rounded presentation summaries. Live dashboard: https://public.tableau.com/app/profile/manuel.baptista/viz/Book1_17894077787600/TikTokProtectionofMinors. The dedicated 2024 spike slide is reserved for the appendix.

### 7. Industry and Regulatory Context

- TikTok, 2021: expanded automation with human review
- EU, 2024: scrutiny of minorsâ€™ safety
- Berlin, 2025: restructuring and a labour dispute
- Sources: TikTok Newsroom Â· European Commission Â· ver.di

TikTok announced expanded automatic removals in the US and Canada in July 2021 and retained human review for nuanced cases. https://newsroom.tiktok.com/advancing-our-approach-to-user-safety?lang=en
The European Commission opened proceedings on 19 February 2024, including minors safety, addictive design, harmful content and safeguards. https://cyprus.representation.ec.europa.eu/news/commission-opens-formal-proceedings-against-tiktok-under-digital-services-act-2024-02-19_en
ver.di reported a Berlin strike over restructuring in September 2025. Employee accounts described promises of training and career development; these were reported experiences, not a verified guarantee of job retention. https://publik.verdi.de/ausgabe-202504/tiktok-ki-killt-jobs/
https://mmm.verdi.de/aktuelle-meldungen/tiktok-mehrtaegiger-streik-gestartet-104613
These events provide context. The decision data does not identify a causal effect of the Berlin dispute.

### 8. Findings and Limits

- Lower fully automated share and reported counts
- No conclusion about moderation quality or staffing
- Causes and child-safety outcomes remain untested
- Coverage checks support comparison, not completeness
- Scope: TikTok Â· Protection of minors Â· Matched Januaryâ€“May periods

2024: fully automated 20,844,566, total 27,771,450. 2025: fully automated 4,390,614, total 11,041,480. 2026: fully automated 1,134,208, total 3,238,987, including 120 partially automated decisions. March and April 2024 account for about 87% of that five-month fully automated total. All selected calendar days are represented in the prepared monthly checks; this does not establish complete platform reporting. The broader 2024â€“2025 source has known missing platform-days. Differences in activity, classification or reporting could contribute. No causal effect of layoffs is established.

### 9. Sources and Project Materials

- Analysis tables, notebooks and SQL â€” GitHub
- Interactive dashboard â€” Tableau Public
- Data definitions â€” EU DSA Transparency Database
- Context â€” TikTok, European Commission and ver.di
- Learning project developed with AI assistance Â· See README for rerun status

Project: https://github.com/manuelbaptistaio/who-moderates-europe
Dashboard: https://public.tableau.com/app/profile/manuel.baptista/viz/Book1_17894077787600/TikTokProtectionofMinors
Data definitions: https://transparency.dsa.ec.europa.eu/page/documentation
Context and sources: https://github.com/manuelbaptistaio/who-moderates-europe/tree/main/06_report
This learning project was developed with AI assistance. Python, SQL and Tableau were combined deliberately to practise each workflow; Python could also perform the comparisons and create charts. A fresh end-to-end rerun remains unverified.
