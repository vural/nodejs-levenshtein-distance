# nodejs-levenshtein-distance

## Installation

    $ npm install levenshtein-distance

## What's levenshtein-distance

	The Levenshtein distance is a string metric for measuring the difference between two sequences.

## Usage for JS

```javascript
var ld = require("levenshtein-distance");

var leven = new ld(['hit','lead','left']);

leven.find('hid',function(result){
  console.log(result); // => hit
});

```

## LICENSE

nodejs-levenshtein-distance is licensed under the BSD license.