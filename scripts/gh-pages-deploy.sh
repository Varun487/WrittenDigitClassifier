echo "Starting new deployment..."
git checkout --orphan gh-pages
echo "Building..."
npm run  --prefix UI/digit-classifier-ui/ build
git --work-tree UI/digit-classifier-ui/dist add --all
echo "Commit new changes..."
git --work-tree dist commit -m 'Deploy'
echo "Pushing to gh-pages..."
git push origin HEAD:gh-pages --force
rm -r UI/digit-classifier-ui/dist
git checkout -f main
git branch -D gh-pages
echo "Successfully deployed!"