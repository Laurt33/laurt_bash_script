LISTE=$(ls -Ad */ | grep -v memcache | grep -v contrib)
for item in $LISTE; do
    ite=$(echo -n $item | head -c -1)
    echo "drush dmu-analyze: $ite"
    drush dmu-analyze $ite
done
