cd src/
flutter build web --release
cd ..
cp -r src/build/web/ .
git add .
git commit -m "update"
git push origin master