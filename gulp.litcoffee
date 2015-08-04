
# Modularized Task Loader
----------------------------------------------------------------
This handles modularizing all of our Gulp tasks in a very easy
and understandable manner. To ease plugin loading, we require 
'gulp-load-plugins' so dependencies from `package.json` get
autoloaded. It's just called `run` for expressiveness.

    gulp = require 'gulp'
    run  = require('gulp-load-plugins')()

    module.exports = (tasks) ->
      tasks.forEach (name) ->
        gulp.task name, require("./tasks/#{name}")(gulp, run)

      return gulp