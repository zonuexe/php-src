PHP_ARG_ENABLE([exif],
  [whether to enable EXIF (metadata from images) support],
  [AS_HELP_STRING([--enable-exif],
    [Enable EXIF (metadata from images) support])])

if test "$PHP_EXIF" != "no"; then
  AC_DEFINE([HAVE_EXIF], [1],
    [Define to 1 if the PHP extension 'exif' is available.])
  PHP_NEW_EXTENSION([exif],
    [exif.c],
    [$ext_shared],,
    [-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1])
  PHP_ADD_EXTENSION_DEP(exif, mbstring, true)
fi
