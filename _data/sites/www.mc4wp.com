module.exports = {
	name: "mc4wp.com", // optional, falls back to object key
	description: "The Mailchimp for WordPress plugin site",
	// skip if localhost
	// skip if this is a new fork of the speedlify (not Zach’s)
	skip: !process.env.CONTEXT || process.env.SITE_NAME !== "speedlify",
	options: {
		frequency: 60 * 24, // 23 hours
		freshChrome: "site"
	},
	urls: [
		"https://www.mc4wp.com/",
		"https://www.mc4wp.com/pricing/",
	]
};