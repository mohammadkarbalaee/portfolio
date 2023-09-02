cd src/
flutter build web
cd ..
cp -r src/web/ .
git add .
git commit -m "update"
git push origin master