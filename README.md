5carts
======

A template to write reviews for tools, websites, projects, etc. 

Usage
-----

Setup in three steps:

   1. Clone this project, e.g. 
   `git clone https://github.com/hupili/5carts.git`.
   2. Create your 5carts repo on GitHub, e.g. `5carts-test`.
   Do not initialize it with anything.
   3. `cd` to the ROOT of `5carts` and init it:
   `./init.sh {ssh_url_to_your_repo}`.
   e.g. 
   `./init.sh git@github.com:hupili/5carts-test.git`.
   4. Modify `_config.yml` to input your own information.
   You can try out 5carts first and come back to modify it later.

Write and distribute your reviews:

   * Please go to `source/sample` for examples.
   See the rendering result on [5carts project website](http://hupili.github.io/5carts/).
   * Use `./build.sh` to build the site locally. 
   * Use `./deploy.sh` to push the new pages to GitHub-Pages.

Stay up-to-date:

   * Use `./merge-upstream.sh` to update changes in 5carts framework.
   

The function of 5carts is still growing. 
I recommend you to run `merge-upstream.sh` from time to time.
Welcome to send PR for your new functions.

Why
---

   * You try hundreds of new stuffs every year: tools, websites, books, ...
   * How to manage them?
   * How to easily share them?

How
---

   * Use GitHub pages and Jekyll. 
   * Write reviews for all kinds of stuffs
   with structured data (frontmatter of Jekyll pages)
   and unstructured data (lengthy body). 
   * Be able to write under any environment. 
   * Be able to render full pages (like blog posts) 
   and digest with different categorization scheme. 
   * Provide index for easy search.
   * Categorization in a human way (by directory).
   * Output Meta data in XML format (make machine readable information).
   * Use Frontend AJAX to provide rich function.

What
----

   * A Jekyll template. 
   * Tools (shell scripts to call git) for gh-page distribution. 
   * Some sample review pages.
   * AJAX suites to provide rich functions.

Status
------

In the foreseeable future, I would not have much time on this repo. 

   * If you are farmiliar with Jekyll and what I'm pursuing here, 
   I'll be glad to add you as a collaborator. 
   You will be a main driving force. 
   * Welcome to implement it under your own repo. 
   Then I'll link to yours without any hesitate. 
   * If you understand what I'm pursuing but do not know how, 
   I would be happy to discuss with you and provide tech support.

Although the template is not ready,
I will keep on writing notes in another repo.
I feel comfortable with this, because my content is under my own control
and I can distribute them easily at any time.

If you like more wild idea, see `daydreaming.md`.
