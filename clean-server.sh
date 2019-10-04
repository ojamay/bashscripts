#-------------------------------------------------------------------------------
#                                                                      NextCloud
cd /var/www/cloud.yamajo.fr
php occ trashbin:cleanup --all-users
php occ versions:cleanup
#-------------------------------------------------------------------------------
#                                                                    SnippetVamp
rm /var/www/vamp.yamajo.fr/log.txt
