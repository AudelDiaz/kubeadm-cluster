FILE=~/.kube/config
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    vagrant ssh master -c "cat .kube/config" > $FILE
fi