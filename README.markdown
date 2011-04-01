Chicken Press
=============

To create a new blog, this is the (proposed) sequence of steps:


Initialize the local repository

chicken-press create <name>

This will create the following (proposed) directory structure and add it to a (local) git repository:

Posts
Comments
Templates


Running the blog
================

The simplest way is

chicken-press serve

Another option: see below.


Generating static pages
=======================

It (TODO: should) is possible to create an static blog. It will run the content through Hyde (TODO: use Discount). The commenting functionality will then be disabled. (TODO: Add Disqus support).


Post Structure
==============

A post is a simple s-expression describing an a-list, which should contain the following:

  - Title
  - Date
  - Author (Scratch that: taken from the comitter)
  - Unique ID (Oh look: Git already provides it)

Comment structure
=================

A comment is... obviously a s-expression, containing the following:

  - Author
  - Email (required but not shown)
  - Content
  - Unique ID (See above)
  

Prior Art
=========

There's git-blog [https://github.com/elliottcable/git-blog]