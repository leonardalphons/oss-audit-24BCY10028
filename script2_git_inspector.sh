PACKAGE="git"

echo "=================================================="
echo "    FOSS Package Inspector - Git"
echo "    Generated: $(date)"
echo "=================================================="

if command -v git >/dev/null 2>&1; then
    echo "✓ Git is INSTALLED"
    echo ""
    echo "--- Git Information ---"
    git --version
    echo ""
    echo "Git Status: $(git --version | head -1)"
    
    case $PACKAGE in
        git)
            echo ""
            echo "Philosophy: Git was created by Linus Torvalds"
            echo "in 2005 when BitKeeper (proprietary) revoked"
            echo "Linux kernel developers' access. Linus wrote"
            echo "Git in just 10 days. GPL v2 license."
            echo ""
            echo "Impact: Powers GitHub (100M+ users), GitLab,"
            echo "every modern software development workflow."
            ;;
    esac
else
    echo "✗ Git is NOT installed"
    echo "Install with: sudo apt install git"
fi
echo "=================================================="
