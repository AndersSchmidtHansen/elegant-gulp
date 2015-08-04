
Scripts
----------------------------------------------------------------
Everything related to compiling CoffeeScript files, minifying
JavaScript files is handled within this single Gulp task.

    module.exports = (gulp, run) ->
      
      () ->

        gulp.src './app/src/*.coffee'
        .pipe run.notify 'Compiling scripts...'
        .pipe run.coffee bare : true
        .pipe gulp.dest './app/dist/'
        .pipe run.notify 'Scripts compiled'
        .on 'end', () ->

          run.util.log ''
          
          yellow  = run.util.colors.yellow 'Have'
          green   = run.util.colors.green 'an'
          blue    = run.util.colors.blue 'awesome'
          magenta = run.util.colors.magenta 'day!'

          run.util.log "#{yellow} #{green} #{blue} #{magenta}"

          run.util.log ''

