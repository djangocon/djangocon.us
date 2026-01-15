# djangocon.us

A Linktree-style landing page for DjangoCon US conference resources. The goal is to provide a simple, single-page hub for all important DjangoCon US links including current and past conference websites, social media, and community resources.

Based on @jefftriplett's [Linktree-clone theme](https://github.com/jefftriplett/webology.dev).

## Requirements

- [Docker](https://www.docker.com/)
- [just](https://github.com/casey/just) (command runner)

## Getting Started

1. Clone the repository
2. Run setup to pull and build Docker images:
   ```bash
   just setup
   ```
3. Start the development server:
   ```bash
   just server
   ```
4. Visit http://localhost:4000 in your browser

## Commands

Run `just` to see all available commands. Common ones include:

- `just server` - Start the Jekyll dev server (port 4000)
- `just start` - Start server in detached mode
- `just stop` - Stop the server
- `just restart` - Restart the server
- `just lint` - Format HTML and sort Tailwind classes

## Editing Links

All links are defined in `_data/links.yml`. Each link has:
- `title` - Display text
- `url` - Link destination
- `css_class` - FontAwesome icon class (e.g., `fas fa-ticket-alt`)
- `nofollow` (optional) - Set to `true` for external links

Links are organized into groups: `current`, `connect`, `past`, and `defna`.
