# Variables
STUDENT_NAME="Leonard Alphons"
ROLL_NUMBER="24BCY10028"
SOFTWARE="Git"
KERNEL=$(uname -r)
USERNAME=$(whoami)
HOME_DIR=$(echo $HOME)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -ds 2>/dev/null || cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)
DATE=$(date "+%B %d, %Y %r")

# Display
echo "=================================================="
echo "    Open Source Audit - $STUDENT_NAME"
echo "    Registration: $ROLL_NUMBER"
echo "=================================================="
echo "Distribution: $DISTRO"
echo "Kernel: $KERNEL"
echo "User: $USERNAME"
echo "Home: $HOME_DIR"
echo "Uptime: $UPTIME"
echo "Date: $DATE"
echo ""
echo "Chosen Software: $SOFTWARE"
echo ""
echo "Git - The tool Linus Torvalds built when proprietary"
echo "version control failed. Licensed under GPL v2."
echo "=================================================="
