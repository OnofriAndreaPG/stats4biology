---
title: 'My learning path with blogdown'
author: "Andrea Onofri"
date: 2018-11-15
tags: 
   - blogdown
categories: General
archives:
  - 2018
---


This is my first day at work with blogdown. I must admit it is pretty overwhelming at the beginning ... 

I worked with R Studio and installed the library 'blogdown'. I followed the instructions and used the 'NEW PROJECT' menu and added a 'NEW BLOGDOWN SITE' to my file system. I selected the 'hugo-blog-jeffprod' theme. This created a bunch of directories in my working directory. If I use the 'serve_site()' function in console, the Hugo server is called and the site is continuously updated, as soon as I make changes and save them. When the server is started, a message appears, saying: "Serving the directory PROJECTDIR at http://127.0.0.1:7958". I copied the http address on Safari (I am working on Mac OS...), so that I can check my changes there.

Here are my steps to the learning the process.


# STEP 1 - The MathJax problem

I added a post to the 'content' directory. This was a trial post, with an equation in latex code. I immediately noted that there was no support to MathJax. Surfing the net, I found a solution for this. These were my steps:

1. The folder 'themes/hugo-blog-jeffprod/layouts/partials' contains the template file 'header.html'. The blogdown documentation suggests not to directly modify this file. Thus I created a copy on the 'layouts/partials/' folder in my root directory. This folder did not exist at the beginning, so I created it.
2. I opened the newly created file 'layouts/partials/header.html' and added the following lines within the <head> ... </head> section:
 
```
<script type="text/javascript"
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
```

Equations seem to render ok, now.

# STEP 2 - Change the blog name and author

I modified the 'config.toml' file in the root directory and added name and author of the site. An easy step...

# STEP 3 - Clean the example files

There were a lot of example posts in the 'content' directory. I removed them all, with no problems. I also had to remove the content of the 'static' folder. These files were not needed, because they belonged to the example posts.

# Step 4 - Where do I put my post?

New posts need to be put in the 'content/post' directory. In order to add a post, I am using the function 'blogdown:::new_post_addin()' (I like working in console...), which creates a correct skeleton. Blog posts are listed under the home page of my blog, sorted by date and by tags.

# Step 5 - Where do I put my non-post pages?

I did not intend to create a pure blog. I wanted also to add static pages, such as articles, tutorials, a project page, links and other stuff. I noted that, when .md or .Rmd files are left in the 'content' folder, a folder with the same name is created in 'public' and the post is rendered within that folder. Therefore, I put a 'links.md' file in the 'content' folder, containing a few links to other web pages of interest. This file is not rendered as a post and it is not visible in my home page. However, a folder named 'link' is created in the public directory, containing the 'links.md' file, rendered as 'index.html' file. Therefore, I can link this file by using the '/link/' address.

# Step 6 - How do I create further entries for the navigation bar?

I just created the '/link/index.html' file in the 'public' directory. I would like the reader to access this web page by clicking on an appropriate link at the top of the home-page, next to the 'Home' and 'About me' links. In order to add this link, I had to edit again the 'layouts/partials/header.html' file. In the 'nav' section, there was the line:

```
<a class="navbar-item" href="{{ "about" | absURL }}">About me</a>
```

This line creates the 'About me' link on the navigation bar. Below this line, I added another line:

```
<a class="navbar-item" href="{{ "links" | absURL }}">Links</a>
```
I guess I can use this approach to redirect readers to other web pages of interest.

# Step 7 - I need to put some order in the 'content' folder' (4/1/2019)!

After adding a few non-post pages to my content folder I wanted to avoid too much confusion. I discovered that I can add folders to the 'content' folder. They are rendered as such in the public directory. For example, I created an 'article' folder and put a 'page1.md' file inside it. After rendering, a folder 'article/page1/' is created in the 'public' folder, containing the 'index.html' page, which is the rendered version of the 'page1.md' file.

I think I start feeling slightly more confident with blogdown!

# Step 8 - Literature support (7/1/2019)!

This problem took me a while to solve. Lately, I discovered that, in order to be able to insert citations, the post file needs to be '.Rmd' and not '.md.' Furthermore, the literature file ('.bib') and the '.csl' file need to be in the '/content/' folder. A reference to both files need to be put in the YAML header, e.g., :

```
bibliography: myFile.bib
csl: myStyle.csl
```

# Step 9 - Google Analytics (6/2/2019)

I would like to track the visits I receive. To do so I enabled Google Analytics and got my tracking id ([see here](https://support.google.com/analytics/answer/1008080)). I also worked on my 'config.toml' file and added the following statement.

```
GoogleAnalytics = "UA-my_ID"
```

In contrast to what I expected, Google Analytics did not work and no hits were recorded for my blog. Lately, I worked on the 'layouts/partials/header.html' and added the following code, right after the '<head>' tag (just replaced 'UA-my_ID' with my tracking id).

```
<!-- Global Site Tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-my_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-my_ID');
</script>```

Now Google Analytics works ok!


