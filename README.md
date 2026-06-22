# biogas-thesis

M.Tech thesis package for **Energy Recovery Through Biogas Production From STP Sludge at Azad Nagar, Hisar**.

## Files
- `thesis_report.md` — complete 8-chapter thesis report with data, analysis, and references
- `figures/` — daily and cumulative biogas production visualizations
- `scripts/build_pdf.sh` — converts Markdown thesis to PDF

## Build PDF
Prerequisites:
- `pandoc`
- LaTeX engine (`xelatex`)

Run:
```bash
chmod +x scripts/build_pdf.sh
./scripts/build_pdf.sh
```

Output:
- `thesis_report.pdf`
