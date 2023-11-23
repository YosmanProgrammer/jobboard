DROP TABLE IF EXISTS categories;

CREATE TABLE IF NOT EXISTS categories (
	slug TEXT PRIMARY KEY,
	title TEXT,
	name TEXT
);

INSERT INTO
	categories (slug, title, name)
VALUES
	(
		'seeking-ranch-job',
		'Seeking Ranch Job',
		'Click here to view Job Seekers'
	),
	(
		'ranch-accountant-bookkeeper-jobs',
		'Ranch Accountant / Bookkeeper Jobs',
		'Accountant / Bookkeeper'
	);
