# Notebook guide

- `01DataPreparation.ipynb`: saved 2024–2025 learning analysis, copied from the author's latest Desktop notebook.
- `2026extension.ipynb`: executed January–May comparison across 2024, 2025 and 2026.

These are saved working notebooks, not a verified fresh-checkout pipeline. They require pandas, PyArrow and Matplotlib, plus the source monthly ZIP archives (not included).

Before running, update the local project path. The core notebook currently selects all ZIP files in the raw-data folder: restrict that selection to 2024 and 2025 before rerunning it with 2026 archives present. The extension separately selects the matched January–May months.

The SQL workflow also relies on importing the prepared monthly counts into MySQL first. Full environment setup and a clean end-to-end rerun remain pending.
