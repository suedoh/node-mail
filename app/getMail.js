const Mailjs = require("@cemalgnlts/mailjs");

const mailjs = new Mailjs();

mailjs.getMessages()
  .then(console.log)

