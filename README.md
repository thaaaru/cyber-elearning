# Cyber Security eLearning - Digital Garden

This repository contains a Cyber Security eLearning course vault set up with Quartz v4 for publishing as a Digital Garden.

## Quick Start

### Local Development

1. **Preview your site locally:**
   ```bash
   npm run serve
   ```
   This will build and serve your site at `http://localhost:8080`

2. **Build only (no server):**
   ```bash
   npm run build
   ```
   The static site will be generated in the `public/` directory.

### Making Changes

- Edit your markdown files in the `content/` directory
- The site will automatically rebuild when using `npm run serve`
- Your Obsidian vault content is in `content/Cyber Security Batch 02 - eLearning/`

## Configuration

### Site Settings

Edit `quartz.config.ts` to customize:
- Site title and description
- Base URL (required for deployment)
- Theme colors and fonts
- Analytics
- Plugins and features

### Layout

Edit `quartz.layout.ts` to customize the page layout and components.

## Deployment

### Option 1: GitHub Pages

1. Initialize git repository:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   ```

2. Create a new GitHub repository and push:
   ```bash
   git remote add origin <your-repo-url>
   git branch -M main
   git push -u origin main
   ```

3. Update `baseUrl` in `quartz.config.ts` to your GitHub Pages URL:
   ```typescript
   baseUrl: "yourusername.github.io/repo-name"
   ```

4. Use Quartz's sync command or set up GitHub Actions for automatic deployment

### Option 2: Vercel

1. Push your code to GitHub
2. Import the repository in Vercel
3. Set build command: `npm run build`
4. Set output directory: `public`
5. Update `baseUrl` in `quartz.config.ts` to your Vercel URL

### Option 3: Netlify

1. Push your code to GitHub
2. Import the repository in Netlify
3. Set build command: `npm run build`
4. Set publish directory: `public`
5. Update `baseUrl` in `quartz.config.ts` to your Netlify URL

## Directory Structure

```
.
├── content/                    # Your markdown content
│   ├── index.md               # Home page
│   └── Cyber Security Batch 02 - eLearning/
├── quartz/                    # Quartz core files
├── docs/                      # Quartz documentation
├── public/                    # Generated static site (git-ignored)
├── quartz.config.ts          # Main configuration
├── quartz.layout.ts          # Layout configuration
└── package.json              # Node.js dependencies and scripts
```

## Useful Commands

- `npm run serve` - Build and serve locally with hot reload
- `npm run build` - Build static site to `public/` directory
- `npm run preview` - Alias for `npm run serve`
- `npx quartz create` - Create new Quartz content
- `npx quartz update` - Update Quartz to latest version

## Documentation

- [Quartz Documentation](https://quartz.jzhao.xyz)
- [Configuration Guide](https://quartz.jzhao.xyz/configuration)
- [Plugin List](https://quartz.jzhao.xyz/plugins)

## Notes

- Keep your content in the `content/` directory
- The `.obsidian` folder is ignored by default
- Obsidian wiki-links (`[[link]]`) are automatically converted
- Support for embedded images, callouts, and other Obsidian features

---

© 2025 Tharaka Mahabage | Cybersecurity Architect | Director – SL CERT
