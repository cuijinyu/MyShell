# 这个shell脚本用来启动imwheel
echo "正在关闭原有的imwheel进程"
killall imwheel
echo "原有进程关闭完毕，正在启动新的imwheel进程"
imwheel
