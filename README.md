# Linux Local Enumeration Script

Check out the post on [Linux Local Enumeration Script](https://highon.coffee/blog/linux-local-enumeration-script) on [HighOn.Coffee](https://highon.coffee)  

The script performs basic linux local enumeration, a first step in the local privilege escalation process.

![linux local priv esc](http://i.imgur.com/cHvO7Rt.gif)

Copy script to target and execute it: 

```
wget https://raw.githubusercontent.com/Arr0way/linux-local-enumeration-script/master/linux-local-enum.sh
chmod linux-local-enum.sh
./linux-local-enum.sh 
```

The script logs all output to file enum.log, which is created in the script root directory. 

Enjoy. 
