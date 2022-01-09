---
title: Download
menu: docs.index
description: Download Tabler to get the compiled CSS and JavaScript, source code, or include it with your favorite package managers like npm, yarn and more.
---

Tabler is a UI kit that speeds up the development process and makes it easier than ever! Built on the latest version of Bootstrap, it helps you create templates based on fully customizable and ready-to-use UI components, which can be used by both simple websites and sophisticated systems. With basic knowledge of HTML and CSS, you’ll be able to create dashboards that are fully functional and beautifully designed!

## What are the benefits?

Tabler is a perfect solution if you want to create an interface which is not only user-friendly but also fully responsive. Thanks to the big choice of ready-made components, you can customize your design and adapt it to the needs of even the most demanding users. On top of that, Tabler is an open source solution, continuously developed and improved by the open source community.

## CDN via unpkg

All files included in `{{ site.npm-package }}` npm package are available over a unpkg CDN. Use it to deliver cached version of Tabler’s compiled CSS and JS to your project.

```html
<script src="https://unpkg.com/{{ site.npm-package }}@{{ site.data.package.version }}/dist/js/tabler.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/{{ site.npm-package }}@{{ site.data.package.version }}/dist/css/tabler.min.css">
```

You can also include additional Tabler plugins:

```html
{% removeemptylines %}
{% for plugin in site.tabler-css-plugins %}
<link rel="stylesheet" href="https://unpkg.com/{{ site.npm-package }}@{{ site.data.package.version }}/dist/css/{{ plugin }}.min.css">
{% endfor %}
{% endremoveemptylines %}
```

## Package managers

Install Tabler in your Node.js powered apps with the npm package:

```
npm install {{ site.npm-package }}
```

Tabler uses other packages to enhance the functionality for example charts and input masks. These are not automatically installed to avoid huge 
dependency trees and need to be installed by using npm install. We support the following packages as of writing.

- [apexcharts](https://apexcharts.com/)
- [autosize](http://www.jacklmoore.com/autosize/)
- [choices.js](https://github.com/Choices-js/Choices)
- [countup.js](https://inorganik.github.io/countUp.js/)
- [flatpickr](https://flatpickr.js.org/)
- [imask](https://imask.js.org/)
- [litepicker](https://litepicker.com/)
- [nouislider](https://refreshless.com/nouislider/)
- [tom-select](https://tom-select.js.org/)

For the complete list of supported packages you can check the peerDependencies section in our [package.json]({{ site.github-url }}/blob/dev/package.json)