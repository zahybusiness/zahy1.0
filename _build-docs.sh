
rm -rf docs-tmp
rm -rf docs-mdx
mkdir -p docs-tmp
cp -R src/pages/{_docs,_includes,_plugins,_data} docs-tmp/
cp -R _config.yml docs-tmp/_config.yml
cp -R package.json docs-tmp/_data/package.json

for f in docs-tmp/**/*.md; do
  mv -- "$f" "${f%.md}.mdx"
done

echo "source: .
destination: docs
fulldoc: true" >> docs-tmp/_config-override.yml

mkdir -p docs-tmp/_layouts
echo "---
---
---
{% removeemptylines %}
title: \"{{ page.title }}\"
description: \"{{ page.description }}\"
{% if page.bootstrap-link %}bootstrap-link: \"{{ page.bootstrap-link }}\"{% endif %}
{% if page.plugin %}plugin: \"{{ page.plugin }}\"{% endif %}
{% if page.libs %}libs: \"{{ page.libs }}\"{% endif %}
{% endremoveemptylines %}
---

{{ content }}" >> docs-tmp/_layouts/docs.html

cd docs-tmp
bundle exec jekyll build --config "_config.yml,_config-override.yml" --trace
cd ..

for f in docs-tmp/docs/docs/*.mdx; do
  sed -i '' "s/\t/  /g" "$f"
done

mkdir -p docs-mdx
mv docs-tmp/docs/docs/* docs-mdx
rm -rf docs-tmp/