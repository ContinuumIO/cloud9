var Session = require("connect").session;
var assert = require("assert");

module.exports = function startup(options, imports, register) {

    assert(options.key, "option 'key' is required");
    assert(options.secret, "option 'secret' is required");

    var connect = imports.connect;
    var sessionStore = imports["session-store"];

    var argv = require('optimist').argv;
    var urlPrefix = argv['url-prefix'];

    connect.useSession(Session({
        store: sessionStore,
        key: options.key,
        secret: options.secret,
        cookie: { path: urlPrefix || '/', httpOnly: true, maxAge: null }
    }));

    register(null, {
        session: {
            getKey: function() {
                return options.key;
            },
            get: sessionStore.get
        }
    });
};