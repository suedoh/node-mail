const Mailjs = require("@cemalgnlts/mailjs");

const mailjs = new Mailjs();

mailjs.getDomains()
  .then(res => {
    // console.log(res)
    console.log("Domain name:", res.data[0].domain);
  });
