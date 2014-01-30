# rename config file to template file
# Replace POST_INSTALL_ENV_PLACEHOLDER -- store in config file
# remove template file
template() {
    template=${1}.template
    mv $1 $template
    
    # use '#' as delimiter becuase $PREFIX has slashes
    sed -e "s#POST_INSTALL_ENV_PLACEHOLDER#${PREFIX}#g" -e "s#POST_INSTALL_ROOT_ENV_PLACEHOLDER#${SYS_PREFIX}#g" < ${template} > $1
    rm $template
}

template $PREFIX/etc/wakari/apps/cloud9.json
mv $PREFIX/lib/node_modules/cloud9/bin/cloud9.sh.template $PREFIX/lib/node_modules/cloud9/bin/cloud9.sh
template $PREFIX/lib/node_modules/cloud9/bin/cloud9.sh
