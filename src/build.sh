if [ ! -d "./site" ]
	then
	mkdir ./site ./site/img ./site/pages ./site/css
else
	if [ ! -d "./site/css" ]; then
		mkdir ./site/img
	fi
	if [ ! -d "./site/pages" ]; then
		mkdir ./site/pages
	fi
	if [ ! -d "./site/img" ]; then
		mkdir ./site/img
	fi
fi

cp -r ./img/* ./site/img
if [-f "./site/css/style.css"];
	then
	rm ./site/css/style.css

touch ./site/css/style.css

if [ ! -d './tmp' ]
	then
	mkdir tmp

python3 ./src/parser.py ./pages/index.txt >./tmp/index.tmp
python3 ./src/interpreter.py >./site/index.html