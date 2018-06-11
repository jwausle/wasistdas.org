URL=https://bitcoin.wasistdas.org
SITEMAP=dist/sitemap.xml
DATE=`date '+%Y-%m-%dT%H:%M:%S+01:00'`

function makeUrlTag() {
   PATH_=$1
   echo '<url>'                             >> ${SITEMAP}
   echo '   <loc>'${URL}/\#${PATH_}'</loc>' >> ${SITEMAP}
   echo '   <lastmod>'${DATE}'</lastmod>'   >> ${SITEMAP}
   echo '</url>'                            >> ${SITEMAP}
}

echo '<?xml version="1.0" encoding="UTF-8"?>
<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
'                > ${SITEMAP}

for _path in `grep path src/router/index.js | sed 's/.*path: .//g' | sed 's/.,//g'`; do
    makeUrlTag ${_path}
done

echo '</urlset>' >> ${SITEMAP}
