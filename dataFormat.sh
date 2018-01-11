sed 's/\(.*    \).*/\1/' /folk/yli14/nightly.ini > /folk/yli14/test/nightlyNew.ini
cd /folk/yli14/test/
oldstr="\["
newstr="\[TestCase"
cat nightlyNew.ini | sed -n "s/$oldstr/$newstr/g;p" > nightlyR.ini
sed -i '1s/.*/[TestCasetestSummary]/' nightlyR.ini
sed -n '1,7p' nightlyR.ini >> nightlyR.ini
sed -i '1,7d' nightlyR.ini
rm -rf /folk/yli14/test/nightlyNew.ini
