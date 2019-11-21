const { src, dest, parallel, watch } = require('gulp');
const autoprefixer = require('gulp-autoprefixer');
const beautify = require('gulp-beautify');
const browserSync = require('browser-sync').create();
const concat = require('gulp-concat');
const fs = require('fs');
const del = require('remove-directory');
const imagemin = require('imagemin');
const imageminMozjpeg = require('imagemin-mozjpeg');
const imageminPngquant = require('imagemin-pngquant');
const sass = require('gulp-sass');
const sassGlob = require('gulp-sass-glob');
const svgSprite = require('gulp-svg-sprite');
const twig = require('gulp-twig');
const uglify = require('uglify-js');
const through2 = require('through2');
var packageJson = JSON.parse(fs.readFileSync('package.json'));

function compileTwig() {
	return src('src/twig/templates/*.twig')
		.pipe(twig({
			data: JSON.parse(fs.readFileSync('package.json'))
		}))
		.pipe(dest('./'))
		.pipe(browserSync.stream());
}

function optimizeHtml() {
	return src('static-html/*.html')
		.pipe(beautify.html({
			'indent_size': 1,
			'indent_char': '	',
			'preserve_newlines': false
		}))
		.pipe(dest('static-html'));
}

function compileSass() {
	return src('src/css/site.scss')
		.pipe(sassGlob())
		.pipe(sass().on('error', sass.logError))
		.pipe(dest('css'))
		.pipe(browserSync.stream());
}

function optimizeCss() {
	return src('css/*.css')
		.pipe(sass({
			outputStyle: 'compressed'
		}))
		.pipe(autoprefixer())
		.pipe(dest('css'));
}

function compileJs() {
	return src(packageJson.js)
		.pipe(concat('site.js'))
		.pipe(dest('js'))
		.pipe(browserSync.stream());
}

function optimizeJs() {
	return src('js/*.js')
		.pipe(through2.obj(function(file, _, cb) {
			if (file.isBuffer()) {
				const code = uglify.minify(file.contents.toString());

				file.contents = Buffer.from(code.code);
			}

			cb(null, file);
		}))
		.pipe(dest('js'));
}

function generateSprite() {
	return src('src/icons/*')
		.pipe(svgSprite({
			svg: {
				xmlDeclaration: false,
				doctypeDeclaration: false,
				namespaceIDs: false,
				dimensionAttributes: true
			},
			mode: {
				inline: true,
				symbol: {
					dest: 'images',
					sprite: 'icons.svg',
				}
			}
		}))
		.pipe(dest('.'));
}

function compressImages(done) {
	(async function() {
		await imagemin(['src/images/*.{jpg,png}'], {
			 destination: 'images',
			 plugins: [
            imageminMozjpeg(),
            imageminPngquant({
                quality: [0.6, 0.8]
            })
        ]
		});
	
		done();
  })();
}

function cleanFiles(done) {
	del('css');
	del('favicons');
	del('images');
	del('js');
	del('static');
	del('static-html');

	done();
}

function runBrowserSync(done) {
	browserSync.init({
		logPrefix: packageJson.vars.name,
		logFileChanges: false,
		notify: {
			styles: {
				top: 'auto',
				bottom: '0',
				padding: '4px',
				fontSize: '12px',
				borderBottomLeftRadius: '0'
			}
		},
		open: false,
		server: './',
		startPath: '/index.html',
		ui: false
	});

	done();
}

function watchFiles(done) {
	watch('package.json', compileTwig);
	watch('src/twig/**/*.twig', compileTwig);
	watch('src/css/**/**', compileSass);
	watch('src/js/**/*.js', compileJs);
	watch('src/icons/*', generateSprite);
	watch('src/images/*', compressImages);

	done();
}

exports.clean = cleanFiles;

exports.default = parallel(
	compileTwig,
	compileSass,
	watchFiles,
	runBrowserSync
);

exports.new = parallel(
	generateSprite,
	compressImages
);

exports.production = parallel(
	optimizeHtml,
	optimizeCss
);