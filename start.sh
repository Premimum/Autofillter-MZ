if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Premimum/Autofillter-MZ.git /Autofillter-MZ
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Autofillter-MZ
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Autofillter-MZ...."
python3 bot.py
