// take an array of words and take the nth character from the nth word. 
// 1st letter from 1st word, 2nd letter from 2nd word etc.
// on the 6th word, start over taking the 1st letter




function decode(words){
var secret = "";
var index = 0;
for (var i = 0; i < words.length; i++) {
	secret += words[i].charAt(index);
	index = (index +1) % 5;
}

return secret

}



module.exports.decode = decode
// or you can just do 
// module.exports = decode