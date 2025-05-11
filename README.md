# 🎙️ Podcast Feed Generator

**Podcast Feed Generator** is a GitHub Action that automatically creates an iTunes-compatible RSS feed (`podcast.xml`) from a YAML configuration file. Perfect for developers, content creators, and podcasters looking to streamline podcast publishing workflows.

---

## 🚀 Features

- Converts a `feed.yaml` file into a valid `podcast.xml`
- Fully compatible with Apple Podcasts, Spotify, and other directories
- Automatically commits the generated XML feed to your repository
- Runs inside a Docker container for isolated, reproducible builds

---

## 🛠 Usage

### 🔧 Workflow Example

In your consuming repository (e.g. `podcast-test`), create a workflow:

```yaml
name: Generate Podcast Feed

on:
  push:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: Run Podcast Feed Generator
        uses: dbaweatherford/podcast-generator@main
        with:
          name: "Anastasia Weatherford"
          email: "anastasia@example.com"

