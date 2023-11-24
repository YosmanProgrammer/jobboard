DROP TABLE IF EXISTS categories;

DROP TABLE IF EXISTS countries;

DROP TABLE IF EXISTS locations;

CREATE TABLE IF NOT EXISTS categories (
	slug TEXT PRIMARY KEY NOT NULL,
	title TEXT,
	name TEXT
);

CREATE TABLE IF NOT EXISTS countries (
	slug TEXT PRIMARY KEY NOT NULL,
	title TEXT,
	name TEXT
);

CREATE TABLE IF NOT EXISTS locations (
	slug TEXT PRIMARY KEY NOT NULL,
	title TEXT,
	name TEXT,
	country TEXT
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
	),
	(
		'admin-operations',
		'Administrative/Operations Jobs',
		'Admin / Operations'
	),
	(
		'alpaca-llama-ranch-jobs',
		'Alpaca / Llama Ranch Jobs',
		'Alpaca / Llama Ranch'
	),
	(
		'animal-sanctuary-jobs',
		'Animal Sanctuary Jobs',
		'Animal Sanctuary'
	),
	(
		'barn-hand-jobs',
		'Barn Hand Jobs',
		'Barn Hand'
	),
	(
		'barn-manager-jobs',
		'Barn Manager Jobs',
		'Barn Manager'
	),
	(
		'bison-ranch-jobs',
		'Bison Ranch Jobs',
		'Bison Ranch'
	),
	(
		'butcher-meat-processing-jobs',
		'Butcher / Meat Processing Jobs',
		'Butcher / Meat Processing'
	),
	(
		'cattle-ranch-jobs',
		'Cattle Ranch Jobs',
		'Cattle Ranch'
	),
	(
		'cook-chef',
		'Cook / Chef Jobs',
		'Cook / Chef'
	),
	(
		'dairy-ranch-jobs',
		'Dairy Ranch Jobs',
		'Dairy Ranch'
	),
	(
		'dog-training-kennel-ranch-jobs',
		'Dog Training / Kennel Ranch Jobs',
		'Dog Training / Kennel Ranch'
	),
	(
		'entry-level-ranch-jobs',
		'Entry Level Ranch Jobs',
		'Entry Level'
	),
	(
		'equestrian-ranch-jobs',
		'Equestrian Ranch Jobs',
		'Equestrian'
	),
	(
		'equine-jobs',
		'Equine Ranch Jobs',
		'Equine'
	),
	(
		'family-ranch-jobs',
		'Family Ranch Jobs',
		'Family Ranch'
	),
	(
		'farm-ranch-jobs',
		'Farm Ranch Jobs',
		'Farm Ranch'
	),
	(
		'farrier-jobs',
		'Farrier / Horseshoeing Jobs',
		'Farrier / Horseshoeing'
	),
	(
		'feedlot-ranch-jobs',
		'Feedlot Ranch Jobs',
		'Feedlot'
	),
	(
		'fly-fishing-ranch-jobs',
		'Fly Fishing Ranch Jobs',
		'Fly Fishing'
	),
	(
		'groundskeeping',
		'Groundskeeping Jobs',
		'Groundskeeping'
	),
	(
		'guest-dude-ranch',
		'Guest / Dude Ranch Jobs',
		'Guest / Dude Ranch'
	),
	(
		'hay-ranch-jobs',
		'Hay Ranch Jobs',
		'Hay Ranch'
	),
	(
		'horse-boarding-ranch-jobs',
		'Horse Boarding Ranch Jobs',
		'Horse Boarding Ranch'
	),
	(
		'horse-care-training-jobs',
		'Horse Care / Training Jobs',
		'Horse Care / Training'
	),
	(
		'horse-rescue-ranch-jobs',
		'Horse / Animal Rescue Ranch Jobs',
		'Horse / Animal Rescue Ranch'
	),
	(
		'trail-guide-jobs',
		'Horseback Riding / Trail Guide Jobs',
		'Horseback Riding / Trail Guide'
	),
	(
		'housekeeping',
		'Housekeeping Jobs',
		'Housekeeping'
	),
	(
		'hunting-ranch-jobs',
		'Hunting Ranch Jobs',
		'Hunting Ranch'
	),
	(
		'internship-apprentice',
		'Internship / Apprentice Jobs',
		'Intern / Apprentice'
	),
	(
		'loper-jobs',
		'Loper / Cutting Horse Jobs',
		'Loper / Cutting Horse'
	),
	(
		'organic-ranch-jobs',
		'Organic / Regenerative Ranch Jobs',
		'Organic / Regenerative Ranch'
	),
	(
		'outfitter-jobs',
		'Outfitter Jobs',
		'Outfitter'
	),
	(
		'pen-rider-jobs',
		'Pen Rider Jobs',
		'Pen Rider'
	),
	(
		'poultry-ranch-jobs',
		'Poultry / Chicken Ranch Jobs',
		'Poultry / Chicken Ranch'
	),
	(
		'private-ranch-jobs',
		'Private Ranch Jobs',
		'Private Ranch'
	),
	(
		'ranch-caretaker-jobs',
		'Ranch Caretaker Jobs',
		'Ranch Caretaker'
	),
	(
		'cowboy-jobs',
		'Ranch Cowboy Jobs',
		'Ranch Cowboy'
	),
	(
		'ranch-foreman-jobs',
		'Ranch Foreman Jobs',
		'Ranch Foreman'
	),
	(
		'ranch-hand',
		'Ranch Hand Jobs',
		'Ranch Hand'
	),
	(
		'ranch-handyman-maintenance-jobs',
		'Ranch Handyman / Maintenance Jobs',
		'Ranch Handyman / Maintenance'
	),
	(
		'ranch-herdsman-jobs',
		'Ranch Herdsman Jobs',
		'Ranch Herdsman Jobs'
	),
	(
		'ranch-jobs-for-couples-teams',
		'Ranch Jobs for Couples / Teams',
		'Ranch Jobs for Couples / Teams'
	),
	(
		'ranch-jobs-with-housing',
		'Ranch Jobs with Housing',
		'Ranch Jobs with Housing'
	),
	(
		'ranch-manager',
		'Ranch Manager Jobs',
		'Ranch Manager'
	),
	(
		'ranch-mechanic-jobs',
		'Ranch Mechanic Jobs',
		'Ranch Mechanic'
	),
	(
		'ranch-technician-jobs',
		'Ranch Technician Jobs',
		'Ranch Technician'
	),
	(
		'ranch-veterinary-jobs',
		'Ranch Veterinarian Jobs',
		'Ranch Veterinarian'
	),
	(
		'range-rider-jobs',
		'Range Rider Jobs',
		'Range Rider'
	),
	(
		'resort-ranch-jobs',
		'Resort Ranch Jobs',
		'Resort Ranch'
	),
	(
		'sales-marketing-ranch-jobs',
		'Sales / Marketing Ranch Jobs',
		'Sales & Marketing'
	),
	(
		'seasonal-ranch-jobs',
		'Seasonal Ranch Jobs',
		'Seasonal Ranch Jobs'
	),
	(
		'sheep-ranch-jobs',
		'Sheep / Goat Ranch Jobs',
		'Sheep / Goat Ranch'
	),
	(
		'summer-ranch-jobs',
		'Summer Ranch Jobs',
		'Summer Ranch Jobs'
	),
	(
		'timber-ranch-jobs',
		'Timber Ranch Jobs',
		'Timber Ranch'
	),
	(
		'wait-kitchen-staff',
		'Wait Staff / Kitchen Staff Jobs',
		'Wait Staff / Kitchen Staff'
	),
	(
		'wedding-ranch-jobs',
		'Wedding / Event Ranch Jobs',
		'Wedding Ranch'
	),
	(
		'winery-vineyard-ranch-jobs',
		'Winery / Vineyard Ranch Jobs',
		'Winery / Vineyard Ranch'
	),
	('wrangler', 'Wrangler Jobs', 'Wrangler');

INSERT INTO
	countries (slug, title, name)
VALUES
	(
		'us-ranch-jobs',
		'United States Ranch Jobs',
		'United States'
	),
	(
		'canada-ranch-jobs',
		'Canada Ranch Jobs',
		'Canada'
	),
	(
		'uk-ranch-jobs',
		'UK Ranch Jobs',
		'United Kingdom ~ UK'
	),
	(
		'australia-ranch-jobs',
		'Australia Ranch Jobs',
		'Australia'
	),
	(
		'international-ranch-jobs',
		'International Ranch Jobs',
		'International'
	);

INSERT INTO
	locations (slug, title, name, country)
VALUES
	(
		'alabama-ranch-jobs',
		'Alabama Ranch Jobs',
		'Alabama',
		'United States'
	),
	(
		'alaska-ranch-jobs',
		'Alaska Ranch Jobs',
		'Alaska',
		'United States'
	),
	(
		'arizona-ranch-jobs',
		'Arizona Ranch Jobs',
		'Arizona',
		'United States'
	),
	(
		'arkansas-ranch-jobs',
		'Arkansas Ranch Jobs',
		'Arkansas',
		'United States'
	),
	(
		'california-ranch-jobs',
		'California Ranch Jobs',
		'California',
		'United States'
	),
	(
		'colorado-ranch-jobs',
		'Colorado Ranch Jobs',
		'Colorado',
		'United States'
	),
	(
		'connecticut-ranch-jobs',
		'Connecticut Ranch Jobs',
		'Connecticut',
		'United States'
	),
	(
		'delaware-ranch-jobs',
		'Delaware Ranch Jobs',
		'Delaware',
		'United States'
	),
	(
		'florida-ranch-jobs',
		'Florida Ranch Jobs',
		'Florida',
		'United States'
	),
	(
		'georgia-ranch-jobs',
		'Georgia Ranch Jobs',
		'Georgia',
		'United States'
	),
	(
		'hawaii-ranch-jobs',
		'Hawaii Ranch Jobs',
		'Hawaii',
		'United States'
	),
	(
		'idaho-ranch-jobs',
		'Idaho Ranch Jobs',
		'Idaho',
		'United States'
	),
	(
		'illinois-ranch-jobs',
		'Illinois Ranch Jobs',
		'Illinois',
		'United States'
	),
	(
		'indiana-ranch-jobs',
		'Indiana Ranch Jobs',
		'Indiana',
		'United States'
	),
	(
		'iowa-ranch-jobs',
		'Iowa Ranch Jobs',
		'Iowa',
		'United States'
	),
	(
		'kansas-ranch-jobs',
		'Kansas Ranch Jobs',
		'Kansas',
		'United States'
	),
	(
		'kentucky-ranch-jobs',
		'Kentucky Ranch Jobs',
		'Kentucky',
		'United States'
	),
	(
		'louisiana-ranch-jobs',
		'Louisiana Ranch Jobs',
		'Louisiana',
		'United States'
	),
	(
		'maine-ranch-jobs',
		'Maine Ranch Jobs',
		'Maine',
		'United States'
	),
	(
		'maryland-ranch-jobs',
		'Maryland Ranch Jobs',
		'Maryland',
		'United States'
	),
	(
		'massachusetts-ranch-jobs',
		'Massachusetts Ranch Jobs',
		'Massachusetts',
		'United States'
	),
	(
		'michigan-ranch-jobs',
		'Michigan Ranch Jobs',
		'Michigan',
		'United States'
	),
	(
		'minnesota-ranch-jobs',
		'Minnesota Ranch Jobs',
		'Minnesota',
		'United States'
	),
	(
		'mississippi-ranch-jobs',
		'Mississippi Ranch Jobs',
		'Mississippi',
		'United States'
	),
	(
		'missouri-ranch-jobs',
		'Missouri Ranch Jobs',
		'Missouri',
		'United States'
	),
	(
		'montana-ranch-job',
		'Montana Ranch Jobs',
		'Montana',
		'United States'
	),
	(
		'nebraska-ranch-jobs',
		'Nebraska Ranch Jobs',
		'Nebraska',
		'United States'
	),
	(
		'nevada-ranch-job',
		'Nevada Ranch Jobs',
		'Nevada',
		'United States'
	),
	(
		'new-hampshire-ranch-jobs',
		'New Hampshire Ranch Jobs',
		'New Hampshire',
		'United States'
	),
	(
		'new-jersey-ranch-jobs',
		'New Jersey Ranch Jobs',
		'New Jersey',
		'United States'
	),
	(
		'new-mexico-ranch-jobs',
		'New Mexico Ranch Jobs',
		'New Mexico',
		'United States'
	),
	(
		'new-york-ranch-jobs',
		'New York Ranch Jobs',
		'New York',
		'United States'
	),
	(
		'north-carolina-ranch-jobs',
		'North Carolina Ranch Jobs',
		'North Carolina',
		'United States'
	),
	(
		'north-dakota-ranch-jobs',
		'North Dakota Ranch Jobs',
		'North Dakota',
		'United States'
	),
	(
		'ohio-ranch-jobs',
		'Ohio Ranch Jobs',
		'Ohio',
		'United States'
	),
	(
		'oklahoma-ranch-jobs',
		'Oklahoma Ranch Jobs',
		'Oklahoma',
		'United States'
	),
	(
		'oregon-ranch-jobs',
		'Oregon Ranch Jobs',
		'Oregon',
		'United States'
	),
	(
		'pennsylvania-ranch-jobs',
		'Pennsylvania Ranch Jobs',
		'Pennsylvania',
		'United States'
	),
	(
		'rhode-island-ranch-jobs',
		'Rhode Island Ranch Jobs',
		'Rhode Island',
		'United States'
	),
	(
		'south-carolina-ranch-jobs',
		'South Carolina Ranch Jobs',
		'South Carolina',
		'United States'
	),
	(
		'south-dakota-ranch-jobs',
		'South Dakota Ranch Jobs',
		'South Dakota',
		'United States'
	),
	(
		'tennessee-ranch-job',
		'Tennessee Ranch Jobs',
		'Tennessee',
		'United States'
	),
	(
		'texas-ranch-jobs',
		'Texas Ranch Jobs',
		'Texas',
		'United States'
	),
	(
		'utah-ranch-jobs',
		'Utah Ranch Jobs',
		'Utah',
		'United States'
	),
	(
		'vermont-ranch-jobs',
		'Vermont Ranch Jobs',
		'Vermont',
		'United States'
	),
	(
		'virginia-ranch-jobs',
		'Virginia Ranch Jobs',
		'Virginia',
		'United States'
	),
	(
		'washington-ranch-jobs',
		'Washington Ranch Jobs',
		'Washington',
		'United States'
	),
	(
		'west-virginia-ranch-jobs',
		'West Virginia Ranch Jobs',
		'West Virginia',
		'United States'
	),
	(
		'wisconsin-ranch-jobs',
		'Wisconsin Ranch Jobs',
		'Wisconsin',
		'United States'
	),
	(
		'wyoming-ranch-jobs',
		'Wyoming Ranch Jobs',
		'Wyoming',
		'United States'
	),
	(
		'alberta-ranch-jobs',
		'Alberta Ranch Jobs',
		'Alberta',
		'Canada'
	),
	(
		'british-columbia-ranch-jobs',
		'British Columbia Ranch Jobs',
		'British Columbia',
		'Canada'
	),
	(
		'manitoba-ranch-jobs',
		'Manitoba Ranch Jobs',
		'Manitoba',
		'Canada'
	),
	(
		'ontario-ranch-jobs',
		'Ontario Ranch Jobs',
		'Ontario',
		'Canada'
	),
	(
		'saskatchewan-ranch-jobs',
		'Saskatchewan Ranch Jobs',
		'Saskatchewan',
		'Canada'
	),
	(
		'queensland-ranch-jobs',
		'Queensland Ranch Jobs',
		'Queensland',
		'Australia'
	),
	(
		'argentina-ranch-jobs',
		'Argentina Ranch Jobs',
		'Argentina',
		'International'
	),
	(
		'bolivia-ranch-jobs',
		'Bolivia Ranch Jobs',
		'Bolivia',
		'International'
	),
	(
		'brazil-ranch-jobs',
		'Brazil Ranch Jobs',
		'Brazil',
		'International'
	),
	(
		'chile-ranch-jobs',
		'Chile Ranch Jobs',
		'Chile',
		'International'
	),
	(
		'colombia-ranch-jobs',
		'Colombia Ranch Jobs',
		'Colombia',
		'International'
	),
	(
		'ecuador-ranch-jobs',
		'Ecuador Ranch Jobs',
		'Ecuador',
		'International'
	),
	(
		'mexico-ranch-jobs',
		'Mexico Ranch Jobs',
		'Mexico',
		'International'
	),
	(
		'nicaragua-ranch-jobs',
		'Nicaragua Ranch Jobs',
		'Nicaragua',
		'International'
	),
	(
		'peru-ranch-jobs',
		'Peru Ranch Jobs',
		'Peru',
		'International'
	),
	(
		'puerto-rico-ranch-jobs',
		'Puerto Rico Ranch Jobs',
		'Puerto Rico',
		'International'
	),
	(
		'russia-ranch-jobs',
		'Russia Ranch Jobs',
		'Russia',
		'International'
	),
	(
		'spain-ranch-jobs',
		'Spain Ranch Jobs',
		'Spain',
		'International'
	),
	(
		'uruguay-ranch-jobs',
		'Uruguay Ranch Jobs',
		'Uruguay',
		'International'
	),
	(
		'venezuela-ranch-jobs',
		'Venezuela Ranch Jobs',
		'Venezuela',
		'International'
	);
