#!/bin/bash
MK="X-Mashape-Key:SNXejVsgXnmshnI1GeNRm8TUkzp6p1KHrj8jsnzWdc8skYAoPv"
CT="'Accept: text/plain'"
echo "Enter Sentence"
read senten
sentenc=${senten// /+}
sentence=${sentenc//./+.+}
URL="https://yoda.p.mashape.com/yoda?sentence="
t="curl -k --get $URL$sentence -H $MK"
echo $t
echo `$t`

