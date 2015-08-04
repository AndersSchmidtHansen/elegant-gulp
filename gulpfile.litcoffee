
# Task Loading
----------------------------------------------------------------
To kick things off, we start by adding all the tasks we need to
the tasks list array below. The tasks defined here will be
passed to the Modularized Task Loader found in the file
called 'gulp.litcoffee', located at the project root.

    tasks = [
      'scripts'
    ]


After that, we simply require Gulp from an extra 'gulp.coffee'
file in the root of our project folder, pass it the `tasks`
array and let Node's export feature handle the rest: 

    gulp = require('./gulp')(tasks)


# Task Execution
----------------------------------------------------------------
Since we've modularized everything before in the above section,
we can now easily pass whatever tasks we want Gulp to run as
default, or as build. It almost can't get any simpler:

    gulp.task 'default', ['scripts']

