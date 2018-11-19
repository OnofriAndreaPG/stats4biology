---
title: 'My first experience with blogdown'
author: "Andrea Onofri"
date: 2018-11-15
tags: 
   - R
   - blogdown
categories: General
archives:
  - 2018
---


This is my first day at work with blogdown. I must admit it is pretty overwhelming at the beginning ... 

I followed the instructions and used the 'NEW PROJECT' menu and added a 'New blogdown' site to my file system.   I used the 'hugo-blog-jeffprod' theme. This created a bunch of directories in my working directory. Here are my steps to learning the process.

# STEP 1 - The MathJax problem

I added a post to the 'content' directory. This was a trial post, with an equation in latex code. I immediately noted that there was no support to MathJax. Surfing the net, I found a solution for this. These were my steps:

1. The folder 'themes/hugo-blog-jeffprod/layouts/partials' contains the template file 'header.html'. The blogdown documentation suggests not to directly modify this file. Thus I created a copy on the 'layouts/partials/' folder in my root directory. This folder did not exist at the beginning, so I created it.
2. I opened the newly created file 'layouts/partials/header.html' and added within the <head> ... </head> section, the following lines:
 
```
<script type="text/javascript"
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
```

Equations seem to render ok, now.

# STEP 2 - Change the blog name and author

I modified the 'config.toml' file in the root directory and added name and author of the site. An easy step...

# STEP 3 - Clean the example files

There were a lot of example posts in the 'content' directory. I removed them all, with no problems. I also had to remove the content of the 'static' folder. These files were not needed, because they belonged to the example posts

# Step 4 - Where do I put my post?

New posts need to be put in the 'content/post' directory. If files are left in the 'content' folder, a folder with the same name is created in 'public' and the post is rendered within that folder. For example, I put a 'links.md' file in the 'content' folder. This was not rendered as a post and it is not visible. However, there is a folder named 'link' in the public directory, containing the 'links.md' file, rendered as an 'html' file.
