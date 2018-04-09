const gulp = require('gulp'),
    sass = require('gulp-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    sourcemaps = require('gulp-sourcemaps');
    ;

gulp.task('sass', () => gulp.src('./scss/styles.scss')
    .pipe(sourcemaps.init())
    .pipe(sass({outputStyle: 'expanded'}))
    .pipe(autoprefixer({versions: ['last 2 browsers']}))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest('../src/css'))
);

gulp.task('default', () => {
    gulp.watch('./scss/**/*.scss', ['sass']);
});