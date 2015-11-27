#!/bin/bash
MK="X-Mashape-Key:SNXejVsgXnmshnI1GeNRm8TUkzp6p1KHrj8jsnzWdc8skYAoPv"
CT="'Accept: text/plain'"
echo "Enter Sentence:"
read senten
sentenc=${senten// /+}
sentence=${sentenc//./+.+}
URL="https://yoda.p.mashape.com/yoda?sentence="
t=$(curl -k  --silent -X GET "$URL$sentence" -H "$MK" 2>&1)
echo "Yoda Tounge:"
echo $t
