/* globals gauge*/
"use strict";
const { openBrowser, write, closeBrowser, goto, press, text } = require('taiko');
const assert = require("assert");
const headless = process.env.headless_chrome.toLowerCase() === 'true';

// Return a screenshot byte array (see https://github.com/getgauge/taiko/issues/779)
gauge.screenshotFn = async function() {
    return await screenshot({ encoding: 'base64' });
};

beforeSuite(async () => {
    await openBrowser({ headless: headless, args:[
            '--disable-gpu',
            '--disable-dev-shm-usage',
            '--disable-setuid-sandbox',
            '--no-first-run',
            '--no-sandbox',
            '--no-zygote',
            '--disable-features=VizDisplayCompositor']
    })
})

afterSuite(async () => {
    await closeBrowser();
});

step("Goto getgauge github page", async () => {
    await goto('https://github.com/getgauge');
});

step("Search for <query>", async (query) => {
    await press('/');
    await write(query);
    await press('Enter');
});

step("Page contains <content>", async (content) => {
    assert.ok(await text(content).exists());
});
