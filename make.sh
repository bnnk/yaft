pushd Fonts
wget -O IBMPlexMono-Medium.ttf \
	"https://fonts.gstatic.com/s/ibmplexmono/v19/-F6qfjptAgt5VM-kVkqdyU8n3twJ8lc.ttf"
sed 's/yaft-256color/xterm-256color/g' conf.h
otf2bdf IBMPlexMono-Medium.ttf -p 12 -o IBMPlexMono-Medium.bdf
popd
./mkfont_bdf table/ISO8859 Fonts/IBMPlexMono-Medium.bdf > glyph.h
make yaftx
./yaftx
