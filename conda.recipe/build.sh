
SRC_DIR=$RECIPE_DIR/..

cd $SRC_DIR
npm install -g --production
cd $PREFIX/lib/node_modules/cloud9
make worker

mkdir -p $PREFIX/etc/wakari/apps
cp $RECIPE_DIR/cloud9.json $PREFIX/etc/wakari/apps/cloud9.json

mkdir -p $PREFIX/bin
POST_LINK=$PREFIX/bin/.${PKG_NAME}-post-link.sh
cp $RECIPE_DIR/post-link.sh $POST_LINK
chmod +x $POST_LINK

