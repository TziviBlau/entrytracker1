const express = require("express");
const app = express();
const port = 5000;

app.get("/health", (req, res) => {
  res.send("OK");
});

app.listen(port, () => {
  console.log(`EntryTracker running on port ${port}`);
});
