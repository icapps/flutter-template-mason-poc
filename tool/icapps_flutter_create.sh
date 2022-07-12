#/!bin/bash

rm -rf test_dir

mason get
mason make icapps_flutter_template_base -o ./test_dir

chmod +x test_dir/tool/*