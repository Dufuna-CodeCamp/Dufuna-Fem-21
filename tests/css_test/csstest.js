var phantomcss = require('phantomcss');
var file_path = casper.cli.get('file_path');

phantomcss.init({
	screenshotRoot:			'screenshots/baselines',
	comparisonResultRoot:	'screenshots/results',
	failedComparisonsRoot:	'screenshots/failures',
	rebase:					casper.cli.get('rebase'),
	mismatchTolerance:		0.2
});

var viewports = {
	'smartphone-portrait':		{ width: 360, height: 640},
	'smartphone-landscape':		{ width: 640, height: 360},
	'tablet-portrait':			{ width: 768, height: 1024},
	'tablet-landscape':			{ width: 1024, height: 768},
	'desktop':					{ width: 1280, height: 1024},
	'desktop-hidpi':			{ width: 1440, height: 900}
}

set_viewport = function(name) {
	var viewport = viewports[name];
	return casper.viewport(viewport.width, viewport.height);
};

casper.options.viewportSize = {
	width: viewports['desktop'].width,
	height: viewports['desktop'].height
};

casper.test.begin('Testing for Page Responsiveness', function(test) {
	
	casper.start(file_path).
	then(function(){
		set_viewport('smartphone-portrait');
		phantomcss.screenshot('body', 'smartphone-portrait');
	});

	casper.then(function() {
		set_viewport('smartphone-landscape');
	}).
	then(function() {
		phantomcss.screenshot('body', 'smartphone-landscape');
	});

	casper.then(function() {
		set_viewport('tablet-portrait');
	}).
	then(function() {
		phantomcss.screenshot('body', 'tablet-portrait');
	});

	casper.then(function() {
		set_viewport('tablet-landscape');
	}).
	then(function() {
		phantomcss.screenshot('body', 'tablet-landscape');
	});

	casper.then(function() {
		set_viewport('desktop');
	}).
	then(function() {
		phantomcss.screenshot('body', 'desktop');
	});

	casper.then(function() {
		set_viewport('desktop-hidpi');
	}).
	then(function() {
		phantomcss.screenshot('body', 'desktop-hidpi');
	});

	casper.then(function compare_screenshots() {
		phantomcss.compareAll();
	});
	
	// run tests
	casper.run(function() {
		console.log('\nCOMPLETED!.');
		casper.test.done();
	});
});
