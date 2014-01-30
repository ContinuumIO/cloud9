
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

export STATIC_DIR=$PREFIX/share/wakari/html/cloud9
mkdir -p $STATIC_DIR


cp -r node_modules/ace/lib/ $STATIC_DIR/ace/lib/
cp -r node_modules/ace/build/src/ $STATIC_DIR/ace/build/
cp -r plugins-client/lib.ace/www/ $STATIC_DIR/ace/
cp -r plugins-client/lib.apf/www/ $STATIC_DIR/
cp -r node_modules/treehugger/lib/ $STATIC_DIR/treehugger/lib/
cp -r node_modules/v8debug/lib/ $STATIC_DIR/v8debug/lib/
cp -r plugins-client/lib.requirejs/www/ $STATIC_DIR/
cp -r node_modules/engine.io-client/ $STATIC_DIR/engine.io/
cp -r plugins-server/c9.smith.io/www/ $STATIC_DIR/smith.io/
cp -r node_modules/smith/ $STATIC_DIR/smith/
cp -r node_modules/msgpack-js-browser/ $STATIC_DIR/msgpack-js/

cp -r configs/../plugins-client/ext.anims/ $STATIC_DIR/ext/anims/
cp -r configs/../plugins-client/ext.autosave/ $STATIC_DIR/ext/autosave/
cp -r configs/../plugins-client/ext.autotest/ $STATIC_DIR/ext/autotest/
cp -r configs/../plugins-client/ext.beautify/ $STATIC_DIR/ext/beautify/
cp -r configs/../plugins-client/ext.clipboard/ $STATIC_DIR/ext/clipboard/
cp -r configs/../plugins-client/ext.closeconfirmation/ $STATIC_DIR/ext/closeconfirmation/
cp -r configs/../plugins-client/ext.code/ $STATIC_DIR/ext/code/
cp -r configs/../plugins-client/ext.codecomplete/ $STATIC_DIR/ext/codecomplete/
cp -r configs/../plugins-client/ext.codetools/ $STATIC_DIR/ext/codetools/
cp -r configs/../plugins-client/ext.colorpicker/ $STATIC_DIR/ext/colorpicker/
cp -r configs/../plugins-client/ext.commands/ $STATIC_DIR/ext/commands/
cp -r configs/../plugins-client/ext.connect/ $STATIC_DIR/ext/connect/
cp -r configs/../plugins-client/ext.console/ $STATIC_DIR/ext/console/
cp -r configs/../plugins-client/ext.consolehints/ $STATIC_DIR/ext/consolehints/
cp -r configs/../plugins-client/ext.csslanguage/ $STATIC_DIR/ext/csslanguage/
cp -r configs/../plugins-client/ext.dbg-node/ $STATIC_DIR/ext/dbg-node/
cp -r configs/../plugins-client/ext.debugger/ $STATIC_DIR/ext/debugger/
cp -r configs/../plugins-client/ext.dockpanel/ $STATIC_DIR/ext/dockpanel/
cp -r configs/../plugins-client/ext.docs/ $STATIC_DIR/ext/docs/
cp -r configs/../plugins-client/ext.dragdrop/ $STATIC_DIR/ext/dragdrop/
cp -r configs/../plugins-client/ext.editors/ $STATIC_DIR/ext/editors/
cp -r configs/../plugins-client/ext.extmgr/ $STATIC_DIR/ext/extmgr/
cp -r configs/../plugins-client/ext.filelist/ $STATIC_DIR/ext/filelist/
cp -r configs/../plugins-client/ext.filesystem/ $STATIC_DIR/ext/filesystem/
cp -r configs/../plugins-client/ext.formatjson/ $STATIC_DIR/ext/formatjson/
cp -r configs/../plugins-client/ext.ftp/ $STATIC_DIR/ext/ftp/
cp -r configs/../plugins-client/ext.gitblame/ $STATIC_DIR/ext/gitblame/
cp -r configs/../plugins-client/ext.githistory/ $STATIC_DIR/ext/githistory/
cp -r configs/../plugins-client/ext.gittools/ $STATIC_DIR/ext/gittools/
cp -r configs/../plugins-client/ext.gotofile/ $STATIC_DIR/ext/gotofile/
cp -r configs/../plugins-client/ext.gotoline/ $STATIC_DIR/ext/gotoline/
cp -r configs/../plugins-client/ext.guidedtour/ $STATIC_DIR/ext/guidedtour/
cp -r configs/../plugins-client/ext.helloworld/ $STATIC_DIR/ext/helloworld/
cp -r configs/../plugins-client/ext.help/ $STATIC_DIR/ext/help/
cp -r configs/../plugins-client/ext.htmllanguage/ $STATIC_DIR/ext/htmllanguage/
cp -r configs/../plugins-client/ext.imgview/ $STATIC_DIR/ext/imgview/
cp -r configs/../plugins-client/ext.jslanguage/ $STATIC_DIR/ext/jslanguage/
cp -r configs/../plugins-client/ext.keybindings_default/ $STATIC_DIR/ext/keybindings_default/
cp -r configs/../plugins-client/ext.language/ $STATIC_DIR/ext/language/
cp -r configs/../plugins-client/ext.linereport/ $STATIC_DIR/ext/linereport/
cp -r configs/../plugins-client/ext.linereport_php/ $STATIC_DIR/ext/linereport_php/
cp -r configs/../plugins-client/ext.linereport_python/ $STATIC_DIR/ext/linereport_python/
cp -r configs/../plugins-client/ext.log/ $STATIC_DIR/ext/log/
cp -r configs/../plugins-client/ext.main/ $STATIC_DIR/ext/main/
cp -r configs/../plugins-client/ext.menus/ $STATIC_DIR/ext/menus/
cp -r configs/../plugins-client/ext.minimap/ $STATIC_DIR/ext/minimap/
cp -r configs/../plugins-client/ext.newresource/ $STATIC_DIR/ext/newresource/
cp -r configs/../plugins-client/ext.noderunner/ $STATIC_DIR/ext/noderunner/
cp -r configs/../plugins-client/ext.nodeunit/ $STATIC_DIR/ext/nodeunit/
cp -r configs/../plugins-client/ext.offline/ $STATIC_DIR/ext/offline/
cp -r configs/../plugins-client/ext.openfiles/ $STATIC_DIR/ext/openfiles/
cp -r configs/../plugins-client/ext.panels/ $STATIC_DIR/ext/panels/
cp -r configs/../plugins-client/ext.preview/ $STATIC_DIR/ext/preview/
cp -r configs/../plugins-client/ext.quickstart/ $STATIC_DIR/ext/quickstart/
cp -r configs/../plugins-client/ext.quickwatch/ $STATIC_DIR/ext/quickwatch/
cp -r configs/../plugins-client/ext.recentfiles/ $STATIC_DIR/ext/recentfiles/
cp -r configs/../plugins-client/ext.remotecontrol/ $STATIC_DIR/ext/remotecontrol/
cp -r configs/../plugins-client/ext.revisions/ $STATIC_DIR/ext/revisions/
cp -r configs/../plugins-client/ext.richtext/ $STATIC_DIR/ext/richtext/
cp -r configs/../plugins-client/ext.run/ $STATIC_DIR/ext/run/
cp -r configs/../plugins-client/ext.runpanel/ $STATIC_DIR/ext/runpanel/
cp -r configs/../plugins-client/ext.save/ $STATIC_DIR/ext/save/
cp -r configs/../plugins-client/ext.searchinfiles/ $STATIC_DIR/ext/searchinfiles/
cp -r configs/../plugins-client/ext.searchreplace/ $STATIC_DIR/ext/searchreplace/
cp -r configs/../plugins-client/ext.settings/ $STATIC_DIR/ext/settings/
cp -r configs/../plugins-client/ext.sidebar/ $STATIC_DIR/ext/sidebar/
cp -r configs/../plugins-client/ext.splitview/ $STATIC_DIR/ext/splitview/
cp -r configs/../plugins-client/ext.statusbar/ $STATIC_DIR/ext/statusbar/
cp -r configs/../plugins-client/ext.stripws/ $STATIC_DIR/ext/stripws/
cp -r configs/../plugins-client/ext.tabbehaviors/ $STATIC_DIR/ext/tabbehaviors/
cp -r configs/../plugins-client/ext.tabsessions/ $STATIC_DIR/ext/tabsessions/
cp -r configs/../plugins-client/ext.testpanel/ $STATIC_DIR/ext/testpanel/
cp -r configs/../plugins-client/ext.themes/ $STATIC_DIR/ext/themes/
cp -r configs/../plugins-client/ext.themes_default/ $STATIC_DIR/ext/themes_default/
cp -r configs/../plugins-client/ext.tooltip/ $STATIC_DIR/ext/tooltip/
cp -r configs/../plugins-client/ext.tree/ $STATIC_DIR/ext/tree/
cp -r configs/../plugins-client/ext.undo/ $STATIC_DIR/ext/undo/
cp -r configs/../plugins-client/ext.uploadfiles/ $STATIC_DIR/ext/uploadfiles/
cp -r configs/../plugins-client/ext.vim/ $STATIC_DIR/ext/vim/
cp -r configs/../plugins-client/ext.watcher/ $STATIC_DIR/ext/watcher/
cp -r configs/../plugins-client/ext.zen/ $STATIC_DIR/ext/zen/
cp -r plugins-client/cloud9.core/www/ $STATIC_DIR/

