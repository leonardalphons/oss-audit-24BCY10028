echo "    Open Source Manifesto Generator"
echo "=================================================="

read -p "1. Favorite open-source tool: " TOOL
read -p "2. Freedom means to you (1 word): " FREEDOM
read -p "3. What would you build/share: " BUILD

DATE=$(date "+%B %Y")
OUTPUT="manifesto_$(whoami)_$(date +%Y%m%d).txt"

cat > "$OUTPUT" << EOF
   OPEN SOURCE MANIFESTO
   $(whoami) - $DATE
==================================================

I use $TOOL daily - proof that shared knowledge
creates tools better than any corporation could.

Freedom to me is $FREEDOM. In software, this means
code that anyone can study, modify, and improve.

I commit to building $BUILD and sharing it freely,
continuing the chain of generosity that powers
the digital world.

Open source isn't just code - it's a philosophy
of abundance over scarcity.

Signed,
$(whoami)
==================================================
EOF

echo "Manifesto saved: $OUTPUT"
echo ""
cat "$OUTPUT"
