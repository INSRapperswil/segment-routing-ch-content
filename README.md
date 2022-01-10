# segment-routing.ch.github.io
This repository contains the source code of the website https://www.segment-routing.ch.
This website has been built with [Hugo](https://gohugo.io/) and is deployed using GitHub Pages.

## Making Changes to the Website
To make changes to the website, first clone this repository with:

```bash
git clone git@github.com:INSRapperswil/segment-routing.ch.github.io.git
```

Then update the content according to the chapters below:

- [Important Folders](#important-folders)
- [Creating a New Article or Project](#creating-a-new-article-or-project)
- [Front Matter](#front-matter)
- [Managing Team Members](#managing-team-members)

Finally, push your changes to the main branch. The changes will automatically be deployed.

If you want to view your changes before deploying, see chapter [Building the Website Locally](#building-the-website-locally).

### Important Folders
For most basic operations (such as adding and editing articles or projects) only two directories are important:  
`content/english/` and `static/images/`

- `content/english/` contains all content related Markdown-files. They are organized in folders such as `articles` and `projects`.

		content/english/
		├── _index.md
		├── articles
		│   ├── _index.md
		│   ├── article-1.md
		│   ├── article-2.md
		│   └── article-3.md
		└── projects
		    ├── _index.md
		    ├── project-1.md
		    ├── project-2.md
		    └── project-3.md
- `static/images/` contains the images for the articles and projects. They are organized in folders that match the Markdown-Filename.
		
		static/images	
		├── articles
		│   ├── article-1
		│   │   ├── article-1-1.jpg
		│   │   └── article-1-2.jpg
		│   └── article-2
		│       └── some-image.jpg
		└──  projects
		    ├── project-1
		    │   ├── project-1-1.png
		    │   ├── project-1-2.png
		    │   └── project-1-3.png
		    ├── project-2
		    │   └── project-overview.png
		    └── project-3
		        └──  a-really-beautiful-image.png

### Creating a New Article or Project
Run one of these commands in the root directory of the project ...
- to create a new <ins>new article</ins>:
	```bash
	hugo new --kind article content/english/articles/<file-name>.md
	```
- to create a new <ins>new project</ins>:
	```bash
	hugo new --kind project content/english/projects/<file-name>.md
	```
Make sure to replace `<file-name>` with a new and unique name.

Alternatively, simply copy and paste existing articles or projects. Make sure to set the date correctly in the [front matter](#front-matter).

Now you can edit the Markdown-File and add your content. You can store your images according to the folder structure described in the chapter [Important Folders](#important-folders).

### Front Matter
At the top of the file you will see code that is enveloped by `---` that looks something like this:
```yaml
---
title: "Article 1"
date: 2000-04-18T10:07:21+06:00
lastmod: 2006-01-02
image: "path/to/image"
onHomepage: true
description: "This is meta description"
draft: false
buttonLabel: "Read more"
---
```
This is called front matter and is simply the files metadata written in `YAML`.  You can manually update these values according to your needs.
- `title`
	- The title of your article or project.
- `date`
	- Typically the creation date of your article or project. 
	- This date is also used to sort articles and projects chronologically on the website.
- `lastmod`
	- Only relevant for projects. 
	- The date when the project page was last modified.
- `image`
	- The path to the main image, which is shown in the overview pages. Of course you can add additional images in the content of the file.
- `onHomepage`
	- Only relevant for articles.
	- If set to `true`, the article is shown on the homepage. You can show as many articles as you want on the homepage.
- `description`
	- This string is the meta description that is used by search engines to provide users with more information on the website.

<img src="https://raw.githubusercontent.com/INSRapperswil/segment-routing.ch.github.io/master/repo-img/meta-description.png" alt="Meta Description" width="800px"/>

- `draft`
	- If set to `true`, it will only show up during development, but not when the website is deployed. Even if a draft is pushed to the deployment server, it is not accessible through the internet.
- `buttonLabel`
	- The label of the buttons in overview pages. This can be any string, such as `"Read more"` or `"Check it out"`.

### Managing Team Members
To update information on existing team members simply edit the files in `content/english/ins/about-us/`.

You can add a new team members by copying and pasting an existing team member.

## Building the Website Locally
If you make larger changes to the website and whish to build the website locally before deploying, you will have to install [Hugo](https://gohugo.io/) on your machine and then run (in the root of the project directory):

```bash
hugo server
```

Finally, visit the website at http://localhost:1313/.

### Installing Hugo
Install `hugo` on your computer by following the [official guide](https://gohugo.io/getting-started/installing/).
Some package managers (including `apt` as of the moment) do not have the latest version of hugo, so make sure to check the version you have with
```bash
hugo version
```
You need at least version `0.79` for this project. If you do not have at least this version, you may need to install hugo manually.

#### Manual Installation
Go to [Hugo Releases](https://github.com/gohugoio/hugo/releases) and download the latest version for you operating system.  
**Important!** You need to use the **extended** version, otherwise the compiler does not automatically compile `.scss` files.

For example for Linux, choose the latest version (currently `hugo_extended_0.86.1_Linux-64bit.deb`) and run these commands:
```bash
wget https://github.com/gohugoio/hugo/releases/download/v0.86.1/hugo_extended_0.86.1_Linux-64bit.deb
sudo dpkg --install ./hugo_extended_0.86.1_Linux-64bit.deb
```
