# Tracking Changes Reflections
1. How does tracking and adding changes make developers' lives easier?
  * Tracking changes is crucial to Git and healthy develement practice.  Lets say you introduce a  bug into your code, it is easy to  revert back back to to a known working state.
2. What is a commit?
  * A commit is a snapshot of what the code base looks like a specfic point in time
3. What are the best practices for commit messages?
  * Use the imperative of the verb, ie  use(change vs changed or changes)
  * The first line will often be used as part of an email subject , so make it something meaningful
  * Keep in mind that there are character length limits for commit messages.
  * Use  bullet points when it makes sense
4. What does the HEAD^ argument mean?
  * HEAD^ is the last commit behind HEAD
5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
  1. Create File
  2. Create / checkout new branch
  3. Add file, so that it  added  to  track changes
  4. Commit Changes
  5. Push Changes
  6. Create Pull Request for merging into master
6. Write a handy cheatsheet of the commands you need to commit your changes?
  1. git checkout master
  2. git pull
  3. git checkout -b "branch-name"
  4. git add "files" or  "."
  5. git push origin "branch name"
7. What is a pull request and how do you create and merge one?
  * A PR can be created on  Github
  * You merge the request  on GitHub's website. By  clicking Merge on the PR request.
8. Why are pull requests preferred when working with teams?
  *  This kind of workflow allows people to review changes before merging them into the master branch.