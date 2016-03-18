#!/bin/bash



sed -i 's/&lt;/</g' *.xml
sed -i 's/&gt;/>/g' *.xml
sed -i 's/&quot;/"/g' *.xml

sed -i 's/<p (.*?)//g' *.xml
sed -i 's/<\/p>//g' *.xml


exit

sed -i 's/<span \(.*\)">\(.*\)<\/span>/\2/g' *.xml


exit

sed -i 's/<p \(.*\)>\(.*\)<\/p>/\2/g' *.xml

exit

sed -i 's/<span \(.*\)>\(.*\)<\/span>/\2/g' *.xml



exit



sed -i 's/<p class=".*">//g' *.xml

sed -i 's/<span style=".*">//g' *.xml

sed -i 's/<strong>//g' *.xml
sed -i 's/<\/strong>//g' *.xml

sed -i 's/<\/p>//g' *.xml
sed -i 's/<\/span>//g' *.xml

exit



sed -i 's/&lt;/</g' *.xml
sed -i 's/&gt;/>/g' *.xml
sed -i 's/&quot;/"/g' *.xml

sed -i 's/<p>DOI: <a href=".*">\(.*\)<\/a>/<doi>\1<\/doi>/g' *.xml


sed -i 's/<p>Extent: \(.*\)<\/p>/<extent>\1<\/extent>/g' *.xml

sed -i 's/<p>Type: \(.*\)<\/p>/<type>\1<\/type>/g' *.xml

sed -i 's/<p>Other subjects: \(.*\)<\/p>/<subjects>\1<\/subjects>/g' *.xml

#sed -i ':a;N;$!ba;s/\n/ /g' *.xml

sed -i 's/<p><strong>Abstract:<\/strong><\/p><p>\(.*\)<\/p>/<abstract>\1<\/abstract>/g' *.xml

#sed -i 's/<strong>//g' *.xml
#sed -i 's/<\/strong>//g' *.xml
#sed -i 's/<p>//g' *.xml
#sed -i 's/<\/p>//g' *.xml
#sed -i 's/<div class="field field-name-body field-type-text-with-summary field-label-hidden">//g' *.xml
#sed -i 's/<div class="field-items">//g' *.xml
#sed -i 's/<div class="field-item even">//g' *.xml
#sed -i 's/<\/div>//g' *.xml

