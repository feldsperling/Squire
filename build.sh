rm -rf build
mkdir build
cat source/intro.js source/Constants.js source/TreeWalker.js source/Node.js source/Range.js source/KeyHandlers.js source/Clean.js source/Clipboard.js source/Editor.js source/exports.js source/outro.js | grep -v '^\/\*jshint' >build/squire-raw.js
./node/node ./node_modules/uglify-js/bin/uglifyjs build/squire-raw.js -c -m -o build/squire.js
cp source/document.html build/document.html