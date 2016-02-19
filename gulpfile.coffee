# load all required libraries
gulp = require "gulp"
gutil = require "gulp-util"

fs = require "fs"


build = ->
  gulp.src "src/*.coffee"
  .pipe coffee(
    bare: true
    )
  .pipe concat "main.js"
  .pipe fs.mkdirSync "build"
  .pipe gulp.dest "build"

gulp.task 'default' ['build'], ->
	gutil.log gutil.colors.white.bgBlue("Build..."), "Complete"