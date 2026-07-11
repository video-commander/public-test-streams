#!/usr/bin/env bash
# Checks every markdown-linked URL in README.md.
#
# Prints one "<http_code> <url>" line per unreachable link and exits
# non-zero if any link is broken. Only a direct 200 counts as alive:
# redirects are treated as failures on purpose, because retired CDN paths
# often redirect to HTML error pages instead of 404ing (e.g. Apple's
# devstreaming CDN).
set -uo pipefail

readme="$(dirname "$0")/../README.md"
failures=0

while read -r url; do
  code=$(curl -sS -o /dev/null --max-time 20 --retry 2 --retry-delay 5 -w '%{http_code}' "$url" 2>/dev/null)
  if [ "$code" != "200" ]; then
    echo "$code $url"
    failures=$((failures + 1))
  fi
done < <(grep -oE '\]\((https?://[^)]+)\)' "$readme" | sed -E 's/^\]\((.*)\)$/\1/' | sort -u)

[ "$failures" -eq 0 ]
