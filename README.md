# TikTok: Decision Automation and Protection of Minors

An exploratory analysis of TikTok's reported moderation decisions, with the Berlin moderation layoffs as institutional context.

## Motivation

Public debate about automation and the restructuring of TikTok's Berlin moderation team raises questions about how moderation work is organised and how minors are protected. This project examines TikTok's reported decision volumes and automation mix using the EU Digital Services Act Transparency Database, with a focused investigation of the protection-of-minors category.

The analysis brings the data into conversation with documented labour and regulatory events. It does not assume that the Berlin layoffs caused the observed changes: platform-level decision records do not identify the work of a particular office, and the March 2024 spike predates the reported 2025 Berlin dispute.

## View the dashboard

[Explore TikTok: Protection of Minors on Tableau Public](https://public.tableau.com/app/profile/manuel.baptista/viz/Book1_17894077787600/TikTokProtectionofMinors)

The dashboard compares **January–May in 2024, 2025 and 2026**. Its three views show monthly decision counts, the automation mix, and total decision counts for each matched five-month period. These are not full-year comparisons.

![TikTok dashboard: January–May comparison](05_dashboard/TikTok_%20Protection%20of%20Minors.png)

## Research question

For the regulatory and Berlin labour context, see [Context and sources](06_report/context_and_sources.md), a short cited timeline prepared for author review.

How does TikTok's reported decision automation differ across categories, and how has the mix changed for protection of minors?

The broader project examines available 2024–2025 records. A separate matched-period extension includes January–May 2026. Conclusions concern TikTok, not every platform operating in Europe.

## Main findings

### A declining automated share in protection of minors

| January–May period | Fully automated share |
| --- | ---: |
| 2024 | 75.06% |
| 2025 | 39.76% |
| 2026 | 35.02% |

Source: [prepared matched-period comparison](02_data_clean/tiktok_jan_may_2024_2026_comparison.csv).

### Counts explain what percentages alone can hide

| Decision method | February 2024 | March 2024 |
| --- | ---: | ---: |
| Fully automated | 309,101 | 8,681,725 |
| Non-automated | 1,333,469 | 1,937,144 |

**Non-automated counts increased even though their percentage share fell.** The much larger automated increase changed the mix. Source: [prepared January–April minors counts](02_data_clean/tiktok_minors_exact_counts_jan_apr_2024.csv).

### Categories show different patterns

Illegal or harmful speech was predominantly fully automated, while risk for public security was reported as non-automated in the matched periods. These comparisons provide context for the focused minors investigation.

These findings describe reported decision processes. They do not measure decision accuracy, staff numbers, or the causes of the changes.

## Workflow

**Using Python, MySQL and Tableau together was a deliberate learning choice.** Python could also handle the matched-month comparisons, percentage calculations and charts. I included MySQL to practise SQL and create a reusable comparison view, and Tableau to design an interactive dashboard.

1. **Python:** inspect monthly archives, check coverage, aggregate decision counts and investigate changes.
2. **MySQL:** import prepared monthly counts and create a reusable matched-period comparison view.
3. **Tableau:** present counts and shares together in an interactive dashboard.

The Tableau percentage charts calculate shares from decision counts because the imported percentage field encountered a numeric parsing issue. The denominator is the sum across automation methods within each displayed period and category.

## Context: regulation, automation and moderation work

- **19 February 2024 — regulatory scrutiny:** the [European Commission opened formal DSA proceedings concerning TikTok](https://cyprus.representation.ec.europa.eu/news/commission-opens-formal-proceedings-against-tiktok-under-digital-services-act-2024-02-19_en), including protection of minors and risks associated with platform design. The announcement opened an investigation; it did not establish its outcome.
- **29 August 2025 — the company's position:** [TikTok's fifth DSA transparency report announcement](https://newsroom.tiktok.com/digital-services-act-our-fifth-transparency-report-on-content-moderation-in-europe?lang=en-150) described its moderation performance and investment in safety and technology. This is company-reported context, not a direct response to the Berlin labour dispute or an independent validation of accuracy.
- **September 2025 — Berlin labour dispute:** [ver.di reported a four-day strike](https://mmm.verdi.de/aktuelle-meldungen/tiktok-mehrtaegiger-streik-gestartet-104613) over planned restructuring affecting approximately 150 Trust and Safety employees, which the union described as replacement through AI and external providers. This source documents the union's position.
- **7 November 2025 — reported layoffs and social plan:** [Tagesspiegel reported an agreement and dismissal notices affecting approximately 150 Berlin moderators](https://www.tagesspiegel.de/berlin/berliner-wirtschaft/arbeitskampf-bei-tiktok-beendet-content-moderatoren-erhalten-abfindungen-14780273.html). The publication date and notice dates are not a universal final employment date.

These events motivate the research question; they are not evidence that a particular change in the charts resulted from the Berlin restructuring. See [Context and sources](06_report/context_and_sources.md) for the timeline, source distinctions and open questions. Sources checked 14 September 2026.

## Files

| Folder | Contents |
| --- | --- |
| `02_data_clean/` | Prepared analysis tables and coverage checks |
| `03_notebooks/` | Python notebooks and analysis scripts |
| `04_sql/` | Database setup and comparison queries |
| `05_dashboard/` | Tableau workbook, dashboard image and supporting exports |
| `06_report/` | Working interpretation and evidence notes |

Raw monthly archives are kept outside the intended GitHub upload. Source data and documentation are available through the [DSA Transparency Database](https://transparency.dsa.ec.europa.eu/).

For source definitions and interfaces, consult the Commission's [database documentation](https://transparency.dsa.ec.europa.eu/page/documentation) and [API documentation](https://transparency.dsa.ec.europa.eu/page/api-documentation). The repository's findings come from the prepared aggregate tables; the linked news provides institutional context.

## Interpretation and limitations

- Aggregate rows are not individual decisions: analysis sums the `count` field.
- The full 2024–2025 TikTok data has known missing platform-days. Missing days are coverage gaps, not zero activity.
- All calendar days are represented in the January–May extension's 15 monthly checks. This does not establish complete reporting of all platform activity.
- “All categories” is an aggregate reference. Do not add it to the individual categories.
- Category names are broad reporting categories; protection of minors must not be equated with one specific type of harm.
- Tiny partially automated counts can be invisible or round to zero. Check the underlying tables before interpreting an absent segment as zero.
- Monthly views include January–May only, with separate year panels to avoid implying observations for omitted months.

## Project status and reproducibility

This is an initial portfolio release. Selected saved notebooks, prepared tables, SQL, dashboard exports and source notes are included. Dependencies, path configuration and a clean rerun still need verification before this project can be described as reproducible from a fresh checkout. See the [notebook guide](03_notebooks/README.md) for the known setup and date-selection requirements. Existing originals and working drafts are preserved locally.

## Assistance

This learning project was developed with AI assistance for code, troubleshooting, analysis discussion and documentation. Interpretations and exported deliverables require review against the underlying data.


