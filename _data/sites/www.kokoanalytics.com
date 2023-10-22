module.exports = {
	name: "kokoanalytics.com", // optional, falls back to object key
	description: "The Koko Analytics plugin site",
	// skip if localhost
	// skip if this is a new fork of the speedlify (not Zach’s)
	skip: !process.env.CONTEXT || process.env.SITE_NAME !== "speedlify",
	options: {
		frequency: 60 * 24, // 23 hours
		freshChrome: "site"
	},
	urls: [
		"https://www.kokoanalytics.com/",
		"https://www.kokoanalytics.com/pricing/",
	]
};