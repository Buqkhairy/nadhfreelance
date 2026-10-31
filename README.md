# Color Proof & Advances Monitoring System

A single-page dashboard for tracking book jobs through colour proof checking and advance review. It is one HTML file with no build step and no dependencies.

## Features

- **Live project tracker:** job ID, title, ISBN, customer, designer, dates, status, progress, priority, revision count and last update
- **Kanban board:** Color Proof, Advance and Completed columns, with drag and drop between stages
- **Colour proof monitor:** proof version, reviewer, status, colour accuracy score and comment history
- **Advance book review:** a 7-point checklist (cover, layout, pagination, ISBN, barcode, image resolution, fonts) with an approval percentage
- **Deadline calendar:** due, completed and overdue jobs by day
- **Team performance:** jobs handled, completion rate and pending work per designer, with a bar chart, pie chart and workload heatmap
- **Documents:** record proof PDFs, final artwork and approval documents per job, with version history
- **Activity feed and notifications:** a log of changes, plus alerts for overdue and due-today jobs
- **AI assistant panel:** answers questions such as "Which projects are overdue?" using your entered data (keyword matching, not a language model)
- **Filters:** by customer, designer, status, priority, project type, due date and ISBN
- **Light and dark mode**, responsive for desktop, tablet and mobile

## Statuses and project types

- **Status:** Color Proof, Advance, Completed
- **Project type:** Checking, Editing

## Getting started

1. Open `index.html` in any modern browser.
2. Choose **Add project** and fill in the job details.
3. Click a row or a board card to load that job into the proof, review and document panels.
4. Drag cards between columns to change a job's status.

## Where your data is stored

When you open the file directly or from GitHub Pages, entries are saved in **your browser's local storage**. This means:

- Data stays on your device and is not uploaded anywhere.
- Each person and each browser has its own separate data.
- Clearing your browser's site data removes your entries.
- **Clear all** in the header wipes everything.

The file was originally built for claude.ai, where a shared database gives teams live synced data. That sync only runs there. Elsewhere the page falls back to local storage, so it does not sync between people.

## Hosting on GitHub Pages

1. Make sure the file is named `index.html` in the repository root.
2. Open **Settings → Pages**.
3. Set the source to the `main` branch and save.
4. After a minute or two the site is live at `https://YOUR-USERNAME.github.io/REPOSITORY-NAME/`.

Note that a free GitHub Pages site is public. The page contains none of your data, but anyone with the address can open the dashboard.

## Live team data with Supabase

1. Create a free project at supabase.com.
2. In **SQL Editor**, run the contents of `supabase-setup.sql`.
3. In **Authentication → Sign In / Providers**, turn off new sign-ups. Then add each teammate under **Authentication → Users → Add user** with an email and password.
4. In **Project Settings → API**, copy the Project URL and the `anon` public key.
5. Near the top of the script in `index.html`, replace `PASTE_PROJECT_URL` and `PASTE_ANON_KEY` with those two values and commit.

Teammates then sign in on the page and see the same projects, comments and activity in real time. Until the two values are filled in, the page works in local-only mode.

## Browser support

Current versions of Chrome, Edge, Firefox and Safari.

## Licence

Add a licence of your choice (for example MIT) before sharing the repository publicly.
