# Number Steps

An interactive version of *Early number: a progression and assessment guide for schools* for teaching assistants and teachers working with pupils.

- `number-steps.html`: the interactive tool. It covers the 15 steps, a guided pupil check, a record to copy into school systems, and optional practice for staff. The page is styled for education professionals: Inter type, a warm off-white background, slate text and a muted teal accent. Every tab opens with one line saying what to do there.
- `record-sheet.html`: the source for the paper record sheet.
- `number-steps-record-sheet.pdf`: the printable A4 record sheet (two pages).

The tool covers Parts 1 to 3 of the guide. Parts 4 and 5 (choosing programmes and planning provision) stay in the written guide for leaders and SENCos.

Pupil data entered in the tool stays in the browser on the device being used. Staff should enter initials only.

## Public website

The tool is also published as a free public website with GitHub Pages:
https://epguy-ux.github.io/psycho-babble/

- `build-site.sh` turns `number-steps.html` into a full web page in `_site/`, with the record sheet PDF and the icons.
- `.github/workflows/publish-website.yml` runs that script and publishes the result whenever a change to this folder reaches `main`.
- `icon.svg` and `apple-touch-icon.png` are the browser tab and phone home-screen icons.

On the website, the Record tab also has a Print button and a link to download the paper record sheet.
