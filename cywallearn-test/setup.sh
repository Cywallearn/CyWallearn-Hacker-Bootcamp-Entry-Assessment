#!/bin/bash

#============================================================================#
#                                                                            #
#   CyWallearn Hacker Bootcamp - Test System Installer                       #
#   Compatible with: Kali Linux, Termux, Ubuntu, Debian, Arch, macOS         #
#                                                                            #
#============================================================================#

set -e

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
NC='\033[0m'

echo ""
echo -e "${CYAN}${BOLD}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}${BOLD}║         CyWallearn Test System - Setup & Installer          ║${NC}"
echo -e "${CYAN}${BOLD}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Detect environment
echo -e "${YELLOW}[*]${NC} Detecting environment..."

if command -v termux-setup-storage &>/dev/null; then
    ENV="Termux"
    PKG_MGR="pkg"
    echo -e "${GREEN}[✓]${NC} Termux detected"
elif [ -f /etc/debian_version ]; then
    ENV="Debian/Ubuntu/Kali"
    PKG_MGR="apt"
    echo -e "${GREEN}[✓]${NC} Debian-based system detected"
elif [ -f /etc/arch-release ]; then
    ENV="Arch"
    PKG_MGR="pacman"
    echo -e "${GREEN}[✓]${NC} Arch-based system detected"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    ENV="macOS"
    PKG_MGR="brew"
    echo -e "${GREEN}[✓]${NC} macOS detected"
else
    ENV="Linux"
    PKG_MGR="apt"
    echo -e "${GREEN}[✓]${NC} Linux detected (assuming apt)"
fi

# Install required packages
echo ""
echo -e "${YELLOW}[*]${NC} Checking required packages..."

if [ "$ENV" == "Termux" ]; then
    $PKG_MGR update -y 2>/dev/null || true
    $PKG_MGR install -y bash coreutils 2>/dev/null || true
elif [ "$ENV" == "macOS" ]; then
    echo -e "${YELLOW}[!]${NC} Skipping package install on macOS (bash comes pre-installed)"
else
    sudo $PKG_MGR update -y 2>/dev/null || true
    sudo $PKG_MGR install -y bash 2>/dev/null || true
fi

echo -e "${GREEN}[✓]${NC} All requirements satisfied"

# Make test script executable
chmod +x cywallearn_test.sh

# Create results directory
mkdir -p results

echo ""
echo -e "${CYAN}${BOLD}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}${BOLD}║                    INSTALLATION COMPLETE!                    ║${NC}"
echo -e "${CYAN}${BOLD}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "  ${BOLD}To run the test:${NC}"
echo ""
echo -e "  ${GREEN}  ./cywallearn_test.sh${NC}"
echo ""
echo -e "  ${BOLD}Or with bash:${NC}"
echo ""
echo -e "  ${GREEN}  bash cywallearn_test.sh${NC}"
echo ""