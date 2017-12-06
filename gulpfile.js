var gulp = require('gulp'),
    gutil = require('gulp-util'),
    sass = require('gulp-sass'),
    browserSync = require('browser-sync'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    cleanCSS = require('gulp-clean-css'),
    rename = require('gulp-rename'),
    del = require('del'),
    imagemin = require('gulp-imagemin'),
    cache = require('gulp-cache'),
    autoprefixer = require('gulp-autoprefixer'),
    notify = require("gulp-notify");

// Скрипты проекта

var dist = '../assets/templates/garmonia';

gulp.task('common-js', function () {
    return gulp.src([
        'app/js/common.js',
    ])
        .pipe(concat('common.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('app/js'));
});

gulp.task('js', ['common-js'], function () {
    return gulp.src([
        'app/libs/fotorama/fotorama.js',
        'app/libs/fancybox/fancybox.js',
        'app/libs/jquery.cookie.js',
        'app/js/common.min.js', // Всегда в конце
    ])
        .pipe(concat('scripts.min.js'))
        // .pipe(uglify()) // Минимизировать весь js (на выбор)
        .pipe(gulp.dest('app/js'))
        .pipe(browserSync.reload({stream: true}));
});

gulp.task('sass', function () {
    return gulp.src('app/sass/**/*.sass')
        .pipe(sass({outputStyle: 'expand'}).on("error", notify.onError()))
        .pipe(rename({suffix: '.min', prefix: ''}))
        .pipe(autoprefixer(['last 15 versions']))
        .pipe(cleanCSS()) // Опционально, закомментировать при отладке
        .pipe(gulp.dest('app/css'))
        .pipe(browserSync.reload({stream: true}));
});

gulp.task('imagemin', function () {
    return gulp.src('app/img/**/*')
        .pipe(cache(imagemin()))
        .pipe(gulp.dest(dist + '/img'));
});

gulp.task('build', ['imagemin', 'sass', 'js'], function () {

    var buildFiles = gulp.src([
        'app/*.html',
        'app/ht.access',
    ]).pipe(gulp.dest(dist));

    var buildCss = gulp.src([
        'app/css/main.min.css',
    ]).pipe(gulp.dest(dist + '/css'));

    var buildJs = gulp.src([
        'app/js/scripts.min.js',
    ]).pipe(gulp.dest(dist + '/js'));

    var buildFonts = gulp.src([
        'app/fonts/**/*',
    ]).pipe(gulp.dest(dist + '/fonts'));

});

gulp.task('clearcache', function () {
    return cache.clearAll();
});
