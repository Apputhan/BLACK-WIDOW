if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Apputhan/BLACK-WIDOW /BLACK-WIDOW
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /BLACK-WIDOW
fi
cd /BLACK-WIDOW
pip3 install -U -r requirements.txt
echo "Starting BLACK-WIDOW...."
python3 bot.py
