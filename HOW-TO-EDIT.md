# How to Update the CRM

There are three ways. Use whichever is fastest in the moment.

---

## Option 1 — Edit directly in GitHub (easiest, no setup)

Every page in this CRM has a direct edit link in GitHub. Go to:

**https://github.com/dyrtylee/dyrt-series-a-crm**

Find the file → click the **pencil icon (✏️)** → edit → click **"Commit changes"** → site updates in ~30 seconds.

**Best for**: Quick status changes, logging a meeting note on the go, updating next actions.

---

## Option 2 — Edit locally, push to sync

Files live at `/Users/dyrtylee/dyrt-raise/`. Edit any `.md` file in any text editor, then push:

```bash
cd /Users/dyrtylee/dyrt-raise
git add -A && git commit -m "update" && git push
```

Or just type this in the Claude Code prompt:
```
! cd /Users/dyrtylee/dyrt-raise && git add -A && git commit -m "update" && git push
```

**Best for**: Bigger edits, updating multiple files at once.

---

## Option 3 — Ask Claude to do it

Open Claude Code and say something like:
- *"Update Alpha Edison's status to Term Sheet"*
- *"Log a meeting note for Noro-Moseley — they want a partner meeting next week"*
- *"Mark Fifth Wall as passed"*

Claude edits the file and pushes. Site updates in ~30 seconds.

**Best for**: When you're on a call or moving fast and don't want to touch files.

---

## The 4 Things You'll Actually Update

### 1. Change an investor's stage

Open `investors/README.md`. Find the investor row in the table. Change the `Stage` column:

```
Backlog → Outreach → Intro → Meeting → Diligence → Term Sheet → Closed
```

Also update `Next Action` while you're there.

---

### 2. Log a meeting note

Go to `meeting-notes/`. Create a new file named `YYYY-MM-DD-firm-name.md`.

Copy the template from `meeting-notes/template.md` and fill it in. Key fields:
- What resonated
- Objections raised
- Conviction score (1–5)
- Next steps with owner + date

---

### 3. Update an investor's profile

Each investor has their own file in `investors/active-diligence/`, `investors/tier1-leads/`, etc.

Open the file and update:
- **Status** line at the top
- **Next Action** section
- **Meeting Notes** table at the bottom

---

### 4. Move an investor between tiers

If someone goes from the follow-on pool to active diligence:
1. Move (or copy) their file to the right folder
2. Update their row in `investors/README.md`

---

## Quick Reference — Stage Definitions

| Stage | Meaning |
|-------|---------|
| `Backlog` | On the list, haven't contacted yet |
| `Outreach` | Email sent, waiting for response |
| `Intro` | Warm intro requested or made |
| `Meeting` | Meeting scheduled or happened |
| `Diligence` | Reviewing deck, model, or data room |
| `Term Sheet` | Active term sheet conversation |
| `Closed` | Wired in |
| `Pass` | Passed — note the reason |
