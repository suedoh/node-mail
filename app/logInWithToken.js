const Mailjs = require("@cemalgnlts/mailjs");

const mailjs = new Mailjs();

mailjs.loginWithToken("")
  .then(console.log)

mailjs.getMessages()
  .then(console.log)

