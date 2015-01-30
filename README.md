Quick PHP QA
============

We needed a really quick basic way to QA php applications and spit out a report without having to get something like (Jenkins for PHP)[http://jenkins-php.org/] or (Sonar)[http://www.sonarqube.org/] up and running. All you need is (Composer)[https://getcomposer.org/] installed and command line access.

To run it's simply
    ./qa.sh /var/directory/your/code /var/directory/your/reports

Have your reports in web/data folder and fire up the index.html file through a web server.

## What's installed by Composer?
 * (PHPLOC)[http://github.com/sebastianbergmann/phploc]
 * (PHP_Depend)[http://pdepend.org/]
 * (PHP Mess Detector)[http://phpmd.org/]
 * (PHP Copy/Paste Detector)[http://github.com/sebastianbergmann/phpcpd]
 * (PHP_CodeSniffer)[https://github.com/squizlabs/PHP_CodeSniffer]

## Limitations
 * There's nothing done to the standard reports - so expect XML, JSON and a pretty basic HTML files.
 * The html files in the web folder is just a quick visualizations of the json/xml files, don't expect much more... but if you want to make it prettier be my guest via pull-request.
 * (PHPUnit)[http://www.phpunit.de/] or any other unit (or otherwise) testing frameworks aren't included - mainly because most of the coding frameworks have them bundled anyway.
 * (PHP Dead Code Detector)[http://github.com/sebastianbergmann/phpdcd] wasn't included as it gives nothing but false positives in the Symfony apps I tested it with.
 * It won't auto generate documentation - like [PHPDox](http://phpdox.de/) or [phpDocumentor](http://www.phpdoc.org/)
