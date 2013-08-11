Stylesheet Notes
================
Remember that all the stylesheets are compiled together and joined into one file before being sent to the server. In order to test functionality 
without your styles in place, I moved your styles to users.css.scss. Currently, only styles in application.css.scss are being applied. To turn on 
stylesheets from all pages, add the line `*= require_tree .` right after the `*= require_self` on line 11 of application.css.scss. This way we can toggle 
on and off styles.

Linux
=====

man [command]
Gives you the manual of any command. Navigate up/down with j/k and quit with q.

ls
list the contents of the directory you're in. "ls -l" to see a list with more details.

cd
Change the current directory. "cd .." to go back.

pwd
Show location of current directory

Rails
=====

# Install gems from Gemfile
bundle install

# Run the rails server (on localhost:3000)
rails s

# Reset the database (if you're getting errors)
rake db:drop
rake db:migrate

Git
===

# Save your work locally
git status
git add -A
git commit -m 'Built amazing things'

# Share your work with the cloud (github)
git push origin master

# Deploy to heroku (after committing)
git push heroku master

# Grab the latest code from github (required before pushing)
git pull origin master

Here's a nice visual guide of what we just went through (and more): http://rogerdudler.github.io/git-guide/

We'll save the topic of branching for later.