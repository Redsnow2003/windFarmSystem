"use strict";

function _typeof(obj) { if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

// For authoring Nightwatch tests, see
// http://nightwatchjs.org/guide#usage
module.exports = {
  before: function before(browser) {
    console.log('Setting up... browser', _typeof(browser));
  },
  after: function after(browser) {
    console.log('Closing down... browser', _typeof(browser));
  },
  'CoreUI Vue e2e tests': function CoreUIVueE2eTests(browser) {
    // automatically uses dev Server port from /config.index.js
    // default: http://localhost:8080
    // see nightwatch.conf.js
    // const devServer = browser.globals.devServerURL
    var devServer = process.env.VUE_DEV_SERVER_URL;

    var toggle = function toggle() {
      var mobile = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : false;

      if (mobile) {
        browser.click('.c-header-toggler.d-lg-none');
      } else {
        browser.click('.c-header-toggler.d-md-down-none');
      }
    };

    var sidebarIsVisible = function sidebarIsVisible() {
      browser.expect.element('.c-sidebar').to.have.css('margin-left').which.equals('0px');
    };

    var sidebarIsHidden = function sidebarIsHidden() {
      browser.expect.element('.c-sidebar').to.have.css('margin-left').which.not.equals('0px');
    };

    var asideIsVisible = function asideIsVisible() {
      browser.expect.element('.c-sidebar-light').to.have.css('margin-right').which.equals('0px');
    };

    var asideIsHidden = function asideIsHidden() {
      browser.expect.element('.c-sidebar-light').to.have.css('margin-right').which.not.equals('0px');
    };

    browser.url(devServer).pause(500).expect.element('body').to.be.present;
    browser.waitForElementVisible('.c-app', 0).assert.elementPresent('.c-header').assert.elementPresent('.c-sidebar').assert.elementPresent('.c-footer').assert.elementPresent('.c-sidebar').assert.elementPresent('.c-body');
    browser.resizeWindow(700, 800);
    sidebarIsHidden();
    toggle('mobile');
    browser.pause(500);
    sidebarIsVisible();
    browser.click('.c-sidebar-backdrop');
    browser.pause(500);
    sidebarIsHidden();
    toggle('mobile');
    browser.pause(500);
    browser.click('.c-sidebar-nav-dropdown-toggle');
    browser.pause(500);
    sidebarIsVisible();
    browser.click('.c-sidebar-nav-item');
    browser.pause(500);
    sidebarIsHidden();
    browser.resizeWindow(1900, 800);
    sidebarIsVisible();
    browser.pause(500);
    browser.click('.c-sidebar-minimizer');
    browser.click('.c-body');
    browser.pause(500);
    browser.expect.element('.c-sidebar').to.have.css('width').which.equals('56px');
    browser.click('.c-sidebar-minimizer');
    browser.click('.c-body');
    browser.pause(500);
    browser.expect.element('.c-sidebar').to.have.css('width').which.equals('256px');
    browser.click('.c-header-toggler.d-md-down-none');
    browser.pause(1000);
    sidebarIsHidden();
    browser.pause(1000);
    asideIsHidden();
    browser.click('.c-header-nav-item:last-child .c-header-nav-btn');
    browser.pause(500);
    asideIsVisible();
    browser.click('.c-sidebar-close');
    asideIsHidden();
    browser.click('.c-header-nav-item:last-child .c-header-nav-btn');
    browser.pause(500);
    asideIsVisible();
    browser.click('.c-body');
    browser.pause(500);
    asideIsHidden();
    browser.resizeWindow(700, 800);
    browser.click('.c-header-nav-item:last-child .c-header-nav-btn');
    browser.pause(500);
    asideIsVisible();
    browser.click('.c-sidebar-backdrop');
    browser.pause(500);
    asideIsHidden();
    browser.end();
  }
};
//# sourceMappingURL=test.dev.js.map
