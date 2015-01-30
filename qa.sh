echo "Running PHPLOC"
php vendor/bin/phploc --log-xml $2/phploc.xml $1
echo "Running PHP_Depend"
php vendor/bin/pdepend --summary-xml=$2/pdepend.xml --jdepend-chart=$2/jdepend.svg --overview-pyramid=$2/pyramid.svg $1
echo "Running PHP Mess Detector"
php vendor/bin/phpmd $1 html cleancode, codesize, controversial, design, naming, unusedcode --reportfile $2/phpmd.html
echo "Running PHP Copy/Paste Detector"
php vendor/bin/phpcpd --log-pmd=$2/phpcpd.xml $1
echo "Running PHP_CodeSniffer"
php vendor/bin/phpcs --standard=PSR2,Zend --report=json --report-file=$2/phpcs.json $1
