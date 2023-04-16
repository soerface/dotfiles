OATH_KEY_HOME=$HOME/.oath_keys/

function otp {
  if [ -f $OATH_KEY_HOME/$1 ]
    then
      CODE=$(oathtool --totp -b -d 6 `cat $OATH_KEY_HOME/$1`)
      echo "$CODE" | clip
  else
    echo "No key specified, or key not found."
    echo "Available keys:"
    ls $OATH_KEY_HOME
  fi
}
