# compose_PIP
packager for openPIP

1.
In Case if this error occurs:
`RuntimeException: Unable to create the cache directory`
Run:
  - chown -R www-data:www-data app/cache
  - chown -R www-data:www-data app/log
 Ref: https://stackoverflow.com/questions/20127884/runtimeexception-unable-to-create-the-cache-directory-var-www-sonata-app-cach
 
2.
In Case `bootstrap.php.cache` is missing
Run:
  - composer run-script post-update-cmd
 Ref: https://stackoverflow.com/questions/6072081/symfony2-updating-bootstrap-php-cache 
