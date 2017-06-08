!# /bin/bash
cd /home/vlead/ .jenkins/workspace/lds-test
make
mkdir lds_docs
cp -r lds-test/build/docs lds_docs
rm lds-test
rsync -avz --progress build/docs/ root@10.4.12.63:/var/www/lds-test
