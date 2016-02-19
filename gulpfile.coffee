# load all required libraries
gulp = require "gulp"
gutil = require "gulp-util"

fs = require "fs"
coffee = require "gulp-coffee"
concat = require "gulp-concat"

build = ->
  gulp.src "src/*.coffee"
  .pipe coffee(
    bare: true
    )
  .pipe concat "main.js"
  .pipe gulp.dest "build"

gulp.task "build", ->
  build()

gulp.task 'default', ['build'], ->
  gutil.log gutil.colors.white.bgBlue("Build..."), "Complete"