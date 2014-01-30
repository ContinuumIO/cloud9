
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

mkcp (){
    mkdir -p $2
    cp -r $1 $2
}

mkcp node_modules/ace/lib/ $STATIC_DIR/ace/lib/
mkcp node_modules/ace/build/src/ $STATIC_DIR/ace/build/
mkcp plugins-client/lib.ace/www/ $STATIC_DIR/ace/
mkcp plugins-client/lib.apf/www/ $STATIC_DIR/
mkcp node_modules/treehugger/lib/ $STATIC_DIR/treehugger/lib/
mkcp node_modules/v8debug/lib/ $STATIC_DIR/v8debug/lib/
mkcp plugins-client/lib.requirejs/www/ $STATIC_DIR/
mkcp node_modules/engine.io-client/ $STATIC_DIR/engine.io/
mkcp plugins-server/c9.smith.io/www/ $STATIC_DIR/smith.io/
mkcp node_modules/smith/ $STATIC_DIR/smith/
mkcp node_modules/msgpack-js-browser/ $STATIC_DIR/msgpack-js/

mkcp configs/../plugins-client/ext.anims/ $STATIC_DIR/ext/anims/
mkcp configs/../plugins-client/ext.autosave/ $STATIC_DIR/ext/autosave/
mkcp configs/../plugins-client/ext.autotest/ $STATIC_DIR/ext/autotest/
mkcp configs/../plugins-client/ext.beautify/ $STATIC_DIR/ext/beautify/
mkcp configs/../plugins-client/ext.clipboard/ $STATIC_DIR/ext/clipboard/
mkcp configs/../plugins-client/ext.closeconfirmation/ $STATIC_DIR/ext/closeconfirmation/
mkcp configs/../plugins-client/ext.code/ $STATIC_DIR/ext/code/
mkcp configs/../plugins-client/ext.codecomplete/ $STATIC_DIR/ext/codecomplete/
mkcp configs/../plugins-client/ext.codetools/ $STATIC_DIR/ext/codetools/
mkcp configs/../plugins-client/ext.colorpicker/ $STATIC_DIR/ext/colorpicker/
mkcp configs/../plugins-client/ext.commands/ $STATIC_DIR/ext/commands/
mkcp configs/../plugins-client/ext.connect/ $STATIC_DIR/ext/connect/
mkcp configs/../plugins-client/ext.console/ $STATIC_DIR/ext/console/
mkcp configs/../plugins-client/ext.consolehints/ $STATIC_DIR/ext/consolehints/
mkcp configs/../plugins-client/ext.csslanguage/ $STATIC_DIR/ext/csslanguage/
mkcp configs/../plugins-client/ext.dbg-node/ $STATIC_DIR/ext/dbg-node/
mkcp configs/../plugins-client/ext.debugger/ $STATIC_DIR/ext/debugger/
mkcp configs/../plugins-client/ext.dockpanel/ $STATIC_DIR/ext/dockpanel/
mkcp configs/../plugins-client/ext.docs/ $STATIC_DIR/ext/docs/
mkcp configs/../plugins-client/ext.dragdrop/ $STATIC_DIR/ext/dragdrop/
mkcp configs/../plugins-client/ext.editors/ $STATIC_DIR/ext/editors/
mkcp configs/../plugins-client/ext.extmgr/ $STATIC_DIR/ext/extmgr/
mkcp configs/../plugins-client/ext.filelist/ $STATIC_DIR/ext/filelist/
mkcp configs/../plugins-client/ext.filesystem/ $STATIC_DIR/ext/filesystem/
mkcp configs/../plugins-client/ext.formatjson/ $STATIC_DIR/ext/formatjson/
mkcp configs/../plugins-client/ext.ftp/ $STATIC_DIR/ext/ftp/
mkcp configs/../plugins-client/ext.gitblame/ $STATIC_DIR/ext/gitblame/
mkcp configs/../plugins-client/ext.githistory/ $STATIC_DIR/ext/githistory/
mkcp configs/../plugins-client/ext.gittools/ $STATIC_DIR/ext/gittools/
mkcp configs/../plugins-client/ext.gotofile/ $STATIC_DIR/ext/gotofile/
mkcp configs/../plugins-client/ext.gotoline/ $STATIC_DIR/ext/gotoline/
mkcp configs/../plugins-client/ext.guidedtour/ $STATIC_DIR/ext/guidedtour/
mkcp configs/../plugins-client/ext.helloworld/ $STATIC_DIR/ext/helloworld/
mkcp configs/../plugins-client/ext.help/ $STATIC_DIR/ext/help/
mkcp configs/../plugins-client/ext.htmllanguage/ $STATIC_DIR/ext/htmllanguage/
mkcp configs/../plugins-client/ext.imgview/ $STATIC_DIR/ext/imgview/
mkcp configs/../plugins-client/ext.jslanguage/ $STATIC_DIR/ext/jslanguage/
mkcp configs/../plugins-client/ext.keybindings_default/ $STATIC_DIR/ext/keybindings_default/
mkcp configs/../plugins-client/ext.language/ $STATIC_DIR/ext/language/
mkcp configs/../plugins-client/ext.linereport/ $STATIC_DIR/ext/linereport/
mkcp configs/../plugins-client/ext.linereport_php/ $STATIC_DIR/ext/linereport_php/
mkcp configs/../plugins-client/ext.linereport_python/ $STATIC_DIR/ext/linereport_python/
mkcp configs/../plugins-client/ext.log/ $STATIC_DIR/ext/log/
mkcp configs/../plugins-client/ext.main/ $STATIC_DIR/ext/main/
mkcp configs/../plugins-client/ext.menus/ $STATIC_DIR/ext/menus/
mkcp configs/../plugins-client/ext.minimap/ $STATIC_DIR/ext/minimap/
mkcp configs/../plugins-client/ext.newresource/ $STATIC_DIR/ext/newresource/
mkcp configs/../plugins-client/ext.noderunner/ $STATIC_DIR/ext/noderunner/
mkcp configs/../plugins-client/ext.nodeunit/ $STATIC_DIR/ext/nodeunit/
mkcp configs/../plugins-client/ext.offline/ $STATIC_DIR/ext/offline/
mkcp configs/../plugins-client/ext.openfiles/ $STATIC_DIR/ext/openfiles/
mkcp configs/../plugins-client/ext.panels/ $STATIC_DIR/ext/panels/
mkcp configs/../plugins-client/ext.preview/ $STATIC_DIR/ext/preview/
mkcp configs/../plugins-client/ext.quickstart/ $STATIC_DIR/ext/quickstart/
mkcp configs/../plugins-client/ext.quickwatch/ $STATIC_DIR/ext/quickwatch/
mkcp configs/../plugins-client/ext.recentfiles/ $STATIC_DIR/ext/recentfiles/
mkcp configs/../plugins-client/ext.remotecontrol/ $STATIC_DIR/ext/remotecontrol/
mkcp configs/../plugins-client/ext.revisions/ $STATIC_DIR/ext/revisions/
mkcp configs/../plugins-client/ext.richtext/ $STATIC_DIR/ext/richtext/
mkcp configs/../plugins-client/ext.run/ $STATIC_DIR/ext/run/
mkcp configs/../plugins-client/ext.runpanel/ $STATIC_DIR/ext/runpanel/
mkcp configs/../plugins-client/ext.save/ $STATIC_DIR/ext/save/
mkcp configs/../plugins-client/ext.searchinfiles/ $STATIC_DIR/ext/searchinfiles/
mkcp configs/../plugins-client/ext.searchreplace/ $STATIC_DIR/ext/searchreplace/
mkcp configs/../plugins-client/ext.settings/ $STATIC_DIR/ext/settings/
mkcp configs/../plugins-client/ext.sidebar/ $STATIC_DIR/ext/sidebar/
mkcp configs/../plugins-client/ext.splitview/ $STATIC_DIR/ext/splitview/
mkcp configs/../plugins-client/ext.statusbar/ $STATIC_DIR/ext/statusbar/
mkcp configs/../plugins-client/ext.stripws/ $STATIC_DIR/ext/stripws/
mkcp configs/../plugins-client/ext.tabbehaviors/ $STATIC_DIR/ext/tabbehaviors/
mkcp configs/../plugins-client/ext.tabsessions/ $STATIC_DIR/ext/tabsessions/
mkcp configs/../plugins-client/ext.testpanel/ $STATIC_DIR/ext/testpanel/
mkcp configs/../plugins-client/ext.themes/ $STATIC_DIR/ext/themes/
mkcp configs/../plugins-client/ext.themes_default/ $STATIC_DIR/ext/themes_default/
mkcp configs/../plugins-client/ext.tooltip/ $STATIC_DIR/ext/tooltip/
mkcp configs/../plugins-client/ext.tree/ $STATIC_DIR/ext/tree/
mkcp configs/../plugins-client/ext.undo/ $STATIC_DIR/ext/undo/
mkcp configs/../plugins-client/ext.uploadfiles/ $STATIC_DIR/ext/uploadfiles/
mkcp configs/../plugins-client/ext.vim/ $STATIC_DIR/ext/vim/
mkcp configs/../plugins-client/ext.watcher/ $STATIC_DIR/ext/watcher/
mkcp configs/../plugins-client/ext.zen/ $STATIC_DIR/ext/zen/
mkcp plugins-client/cloud9.core/www/ $STATIC_DIR/

