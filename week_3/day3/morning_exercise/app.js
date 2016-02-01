var decode = require('./decode.js').decode;
//if you look at the decode page and use the comment at the bottom
// you can just use
//var decode = require('.decode.js');
var words, message;
words = [
"January",
"lacks",
"caveats",
"hazardous",
"DOORS",
"century",
"breaking",
"blithe",
"pepper",
"kleptomaniac"
];


message = decode(words)
console.log(message);