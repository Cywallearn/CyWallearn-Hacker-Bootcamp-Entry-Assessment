#!/bin/bash

#=============================================================================#
#                                                                             #
#   CyWallearn Hacker Bootcamp - Entry Assessment Test                        #
#   version   : 1.0.0                                                         #
#   author    : CyWallearn Team                                               #
#   license   : Educational Use Only                                          #
#   test_date : $(date +"%Y-%m-%d %H:%M")                                     #
#                                                                             #
#   DESC: 20 progressive MCQs from absolute beginner to expert level.         #
#         Results map to 5 skill tiers with custom rank names.                #
#                                                                             #
#=============================================================================#

# ------------------------------- CONFIGURATION -------------------------------

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m' # No Color

# Banner color
BANNER_COLOR=$CYAN

# Clear screen function
clear_screen() {
    printf "\033c"
}

# ------------------------------- BANNER ------------------------------------

show_banner() {
    echo ""
    echo -e "${BANNER_COLOR}╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BANNER_COLOR}║                                                              ║${NC}"
    echo -e "${BANNER_COLOR}║   ██████╗██╗   ██╗██╗    ███████╗██╗     ███████╗ █████╗ ██████╗ ███╗   ██╗${NC}"
    echo -e "${BANNER_COLOR}║  ██╔════╝╚██╗ ██╔╝██║    ██╔════╝██║     ██╔════╝██╔══██╗██╔══██╗████╗  ██║${NC}"
    echo -e "${BANNER_COLOR}║  ██║      ╚████╔╝ ██║    █████╗  ██║     █████╗  ███████║██████╔╝██╔██╗ ██║${NC}"
    echo -e "${BANNER_COLOR}║  ██║       ╚██╔╝  ██║    ██╔══╝  ██║     ██╔══╝  ██╔══██║██╔══██╗██║╚██╗██║${NC}"
    echo -e "${BANNER_COLOR}║  ╚██████╗   ██║   ██║    ██║     ███████╗███████╗██║  ██║██║  ██║██║ ╚████║${NC}"
    echo -e "${BANNER_COLOR}║   ╚═════╝   ╚═╝   ╚═╝    ╚═╝     ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝${NC}"
    echo -e "${BANNER_COLOR}║                                                              ║${NC}"
    echo -e "${BANNER_COLOR}║            🎯  HACKER BOOTCAMP - ENTRY ASSESSMENT  🎯         ║${NC}"
    echo -e "${BANNER_COLOR}║                                                              ║${NC}"
    echo -e "${BANNER_COLOR}╚══════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# ------------------------------- QUESTION BANK --------------------------------

# Each question: Q|A|B|C|D|Correct|Difficulty(1-5)
# Difficulty 1=beginner, 5=expert

QUESTIONS=(
    "1|What does the command 'pwd' do?|Print Working Directory|Print Word Document|Power Web Display|Process Window Data|a|1"
    "2|Which command is used to list files in a directory?|show|list|ls|dir|d|1"
    "3|What symbol represents the root directory in Linux?|/|\\|~|@|a|1"
    "4|Which command shows the current user?|who|whoami|user|id|b|1"
    "5|What does 'cd ..' do?|Go to home|Go to root|Go up one directory|Go to previous directory|c|1"
    "6|What is the correct way to make a file executable?|chmod +x file|chmod 644 file|chmod -r file|chmod file +x|a|2"
    "7|Which command displays the last 10 lines of a file?|head -10|tail -10|cat -10|less -10|b|2"
    "8|What does the pipe symbol '|' do?|Redirects output to a file|Chains commands (output of first = input of second)|Ends a command|Creates a variable|b|2"
    "9|Which command searches for text inside files?|find|locate|grep|search|c|2"
    "10|What is the default port for HTTP?|21|22|80|443|c|2"
    "11|What is an IP address?|A domain name|A numerical label for a device on a network|A password|A type of protocol|b|3"
    "12|Which tool is used for network scanning?|nmap|nano|cat|ping|a|3"
    "13|What does 'ping' do?|Tests network connectivity|Scans ports|Cracks passwords|Encrypts data|a|3"
    "14|What does 'sudo' allow you to do?|Switch user directory|Execute commands as superuser|Delete files|Edit text files|b|3"
    "15|What is a shell?|A physical case for a computer|A command-line interface to the OS|A type of virus|A GUI desktop environment|b|3"
    "16|What is a reverse shell?|A shell that bounces back an echo|A connection where target connects back to attacker|A shell that reverses text|A type of firewall|c|4"
    "17|What does SQL stand for?|Simple Query Language|Structured Query Language|Sequenced Question Language|Standard Quiz Language|b|4"
    "18|What is a zero-day vulnerability?|A bug discovered on day zero of month|A vulnerability unknown to the vendor with no patch|A vulnerability that costs zero dollars|A vulnerability from the year 2000|b|4"
    "19|What is privilege escalation?|Getting promoted at work|Gaining higher-level access than intended|Increasing network speed|Raising file permissions|b|4"
    "20|What is a buffer overflow?|A network buffer filling up|Writing more data than a buffer can hold to overwrite memory|A battery in a buffer|A type of firewall overflow|b|5"
)

# ------------------------------- LEVEL DEFINITIONS ----------------------------

declare -A LEVEL_NAMES
LEVEL_NAMES[1]="🌱  Digital Seedling"
LEVEL_NAMES[2]="🛡️  Protocol Novice"
LEVEL_NAMES[3]="⚔️  Shell Warrior"
LEVEL_NAMES[4]="🔥  Cyber Phantom"
LEVEL_NAMES[5]="👑  Elite Hacker"

declare -A LEVEL_DESCRIPTIONS
LEVEL_DESCRIPTIONS[1]="You're at the very beginning of your hacking journey. Every master was once a beginner — keep learning!"
LEVEL_DESCRIPTIONS[2]="You understand the basics of Linux and networking. You're building a solid foundation. Stay curious!"
LEVEL_DESCRIPTIONS[3]="You have a good grasp of intermediate concepts. You're ready to dive deeper into cybersecurity."
LEVEL_DESCRIPTIONS[4]="Impressive! You think like a hacker. Advanced concepts are within your reach. You have real potential!"
LEVEL_DESCRIPTIONS[5]="Exceptional! You demonstrate expert-level understanding. The hacking world needs minds like yours!"

declare -A LEVEL_NOTES
LEVEL_NOTES[1]="📸 SCREENSHOT THIS RESULT & SEND TO YOUR MENTOR\n📖 Start with: Linux Basics → Networking Fundamentals → Introduction to Cybersecurity\n🔗 Access your course: https://cywallearn.com/bootcamp/beginner"
LEVEL_NOTES[2]="📸 SCREENSHOT THIS RESULT & SEND TO YOUR MENTOR\n📖 Continue with: Linux Mastery → Network Scanning → Basic Scripting\n🔗 Access your course: https://cywallearn.com/bootcamp/novice"
LEVEL_NOTES[3]="📸 SCREENSHOT THIS RESULT & SEND TO YOUR MENTOR\n📖 Recommended: Advanced Linux → Nmap Deep Dive → Bash Scripting → Intro to Exploitation\n🔗 Access your course: https://cywallearn.com/bootcamp/warrior"
LEVEL_NOTES[4]="📸 SCREENSHOT THIS RESULT & SEND TO YOUR MENTOR\n📖 Next level: Web App Pentesting → SQL Injection → XSS → Privilege Escalation\n🔗 Access your course: https://cywallearn.com/bootcamp/phantom"
LEVEL_NOTES[5]="📸 SCREENSHOT THIS RESULT & SEND TO YOUR MENTOR\n📖 Master track: Advanced Exploitation → Buffer Overflows → C2 Frameworks → Red Teaming\n🔗 Access your course: https://cywallearn.com/bootcamp/elite"
)

# ------------------------------- FUNCTIONS -----------------------------------

print_slow() {
    local text="$1"
    local delay="${2:-0.003}"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo ""
}

ask_question() {
    local q_data="$1"
    local q_num="$2"
    local total="$3"

    IFS='|' read -r num question opt_a opt_b opt_c opt_d correct diff <<< "$q_data"

    # Difficulty indicator
    local diff_stars=""
    for (( d=0; d<diff; d++ )); do
        diff_stars+="★"
    done
    for (( d=diff; d<5; d++ )); do
        diff_stars+="☆"
    done

    echo ""
    echo -e "${BOLD}${YELLOW}╔══════════════════════════════════════════════════════════════╗${NC}"
    printf "${BOLD}${YELLOW}║  Question %2d / %d %39s║${NC}\n" "$q_num" "$total" ""
    echo -e "${BOLD}${YELLOW}║  Difficulty: ${WHITE}${diff_stars}${YELLOW} %36s║${NC}"
    echo -e "${BOLD}${YELLOW}╚══════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${WHITE}${BOLD}${question}${NC}"
    echo ""
    echo -e "  ${CYAN}a)${NC} ${opt_a}"
    echo -e "  ${CYAN}b)${NC} ${opt_b}"
    echo -e "  ${CYAN}c)${NC} ${opt_c}"
    echo -e "  ${CYAN}d)${NC} ${opt_d}"
    echo ""

    while true; do
        echo -ne "${GREEN}➜ ${NC}${BOLD}Your answer (a/b/c/d): ${NC}"
        read -r ans </dev/tty
        ans=$(echo "$ans" | tr '[:upper:]' '[:lower:]')
        case "$ans" in
            a|b|c|d) break ;;
            *) echo -e "${RED}❌ Invalid choice. Please enter a, b, c, or d.${NC}" ;;
        esac
    done

    if [ "$ans" == "$correct" ]; then
        echo ""
        echo -e "${GREEN}${BOLD}✅ CORRECT!${NC}"
        SCORE=$((SCORE + 1))
        sleep 0.5
        return 0
    else
        echo ""
        echo -e "${RED}${BOLD}❌ INCORRECT!${NC}"
        local correct_letter=""
        case "$correct" in
            a) correct_letter="$opt_a" ;;
            b) correct_letter="$opt_b" ;;
            c) correct_letter="$opt_c" ;;
            d) correct_letter="$opt_d" ;;
        esac
        echo -e "${DIM}The correct answer was: ${WHITE}${BOLD}${correct}) ${correct_letter}${NC}"
        sleep 0.8
        return 1
    fi
}

get_level() {
    local score=$1
    local total=$2
    local percentage=$(( score * 100 / total ))

    if [ "$percentage" -le 20 ]; then
        echo 1
    elif [ "$percentage" -le 40 ]; then
        echo 2
    elif [ "$percentage" -le 60 ]; then
        echo 3
    elif [ "$percentage" -le 80 ]; then
        echo 4
    else
        echo 5
    fi
}

show_loading() {
    local msg="$1"
    echo -ne "${DIM}${msg}"
    for i in {1..3}; do
        sleep 0.3
        echo -n "."
    done
    echo -e "${NC}"
}

show_result_screen() {
    local score=$1
    local total=$2
    local level=$3
    local percentage=$(( score * 100 / total ))
    local student_name="$4"

    clear_screen

    local rank_name="${LEVEL_NAMES[$level]}"
    local rank_desc="${LEVEL_DESCRIPTIONS[$level]}"
    local rank_note="${LEVEL_NOTES[$level]}"

    echo ""
    echo -e "${PURPLE}╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║                                                              ║${NC}"
    echo -e "${PURPLE}║           🏆  TEST COMPLETE - RESULTS REPORT  🏆             ║${NC}"
    echo -e "${PURPLE}║                                                              ║${NC}"
    echo -e "${PURPLE}╚══════════════════════════════════════════════════════════════╝${NC}"
    echo ""

    if [ -n "$student_name" ]; then
        echo -e "  ${BOLD}Student:${NC}        ${WHITE}${student_name}${NC}"
    fi
    echo -e "  ${BOLD}Date:${NC}           $(date '+%Y-%m-%d %H:%M:%S')"
    echo -e "  ${BOLD}Test:${NC}           CyWallearn Hacker Bootcamp - Entry Assessment"
    echo ""

    # Score bar
    local bar_width=40
    local filled=$(( percentage * bar_width / 100 ))
    local empty=$(( bar_width - filled ))

    echo -e "  ${BOLD}Score:${NC}          ${WHITE}${score} / ${total}${NC}  (${percentage}%)"
    echo ""
    echo -ne "  ${BOLD}Progress:${NC}      ${GREEN}"
    for (( i=0; i<filled; i++ )); do echo -n "█"; done
    echo -ne "${NC}${RED}"
    for (( i=0; i<empty; i++ )); do echo -n "░"; done
    echo -e "${NC}"

    echo ""
    echo -e "  ${BOLD}──────────────────────────────────────────────────────${NC}"
    echo ""

    # Level display
    echo -e "  ${BOLD}🏅 Your Rank:${NC}"
    echo ""
    case $level in
        1) local lcol=$RED ;;
        2) local lcol=$YELLOW ;;
        3) local lcol=$BLUE ;;
        4) local lcol=$PURPLE ;;
        5) local lcol=$GREEN ;;
    esac
    
    # Big level name
    local box_width=56
    echo ""
    echo -e "  ${lcol}┌$(printf '═%.0s' $(seq 1 $((box_width - 2))))┐${NC}"
    local padding_left=$(( (box_width - 2 - ${#rank_name}) / 2 ))
    local padding_right=$(( box_width - 2 - padding_left - ${#rank_name} ))
    echo -e "  ${lcol}║$(printf ' %.0s' $(seq 1 $padding_left))${WHITE}${BOLD}${rank_name}${NC}${lcol}$(printf ' %.0s' $(seq 1 $padding_right))║${NC}"
    echo -e "  ${lcol}└$(printf '═%.0s' $(seq 1 $((box_width - 2))))┘${NC}"
    echo ""

    # Level description
    echo -e "  ${DIM}${rank_desc}${NC}"
    echo ""
    echo -e "  ${BOLD}──────────────────────────────────────────────────────${NC}"
    echo ""

    # Next steps
    echo -e "  ${CYAN}${BOLD}📋 NEXT STEPS${NC}"
    echo ""
    echo -e "  ${rank_note}"
    echo ""
    echo -e "  ${BOLD}──────────────────────────────────────────────────────${NC}"
    echo ""
    echo -e "  ${YELLOW}${BOLD}🔔 REMINDER:${NC}"
    echo -e "  ${WHITE}  Take a screenshot of this screen and send it to your mentor!${NC}"
    echo ""
    echo -e "${PURPLE}╚══════════════════════════════════════════════════════════════╝${NC}"
    echo ""

    # Save result to file
    local result_dir="results"
    mkdir -p "$result_dir"
    local safe_name="${student_name:-anonymous}"
    safe_name=$(echo "$safe_name" | tr ' ' '_' | tr -d '[:punct:]')
    local result_file="${result_dir}/${safe_name}_$(date +%Y%m%d_%H%M%S).txt"
    
    {
        echo "═══════════════════════════════════════════════════════════════"
        echo "  CyWallearn Hacker Bootcamp - Entry Assessment Test"
        echo "═══════════════════════════════════════════════════════════════"
        echo ""
        echo "  Student:       ${student_name:-N/A}"
        echo "  Date:          $(date '+%Y-%m-%d %H:%M:%S')"
        echo "  Score:         ${score} / ${total}  (${percentage}%)"
        echo "  Rank:          ${rank_name}"
        echo "  Level:         ${level}/5"
        echo ""
        echo "───────────────────────────────────────────────────────────────"
        echo "  Description:"
        echo "  ${rank_desc}"
        echo ""
        echo "───────────────────────────────────────────────────────────────"
        echo "  Next Steps:"
        echo "  ${rank_note}"
        echo ""
        echo "───────────────────────────────────────────────────────────────"
        echo "  Send this screenshot to your mentor!"
        echo "═══════════════════════════════════════════════════════════════"
    } > "$result_file"
    
    echo -e "${DIM}  📄 Result saved to: ${result_file}${NC}"
    echo ""
}

# ------------------------------- MAIN PROGRAM ---------------------------------

# Main execution
main() {
    clear_screen
    show_banner
    
    TOTAL_QUESTIONS=${#QUESTIONS[@]}
    SCORE=0
    
    echo -e "${CYAN}${BOLD}╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}${BOLD}║                    TEST INFORMATION                          ║${NC}"
    echo -e "${CYAN}${BOLD}╠══════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${CYAN}${BOLD}║  • ${WHITE}Questions:${NC} 20 MCQ                           ${CYAN}${BOLD}           ║${NC}"
    echo -e "${CYAN}${BOLD}║  • ${WHITE}Duration:${NC} No time limit - take your time!     ${CYAN}${BOLD}   ║${NC}"
    echo -e "${CYAN}${BOLD}║  • ${WHITE}Levels:${NC} 5 Ranks from Seedling to Elite Hacker ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}║  • ${WHITE}Grading:${NC} Immediate feedback after each answer ${CYAN}${BOLD}   ║${NC}"
    echo -e "${CYAN}${BOLD}╚══════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    # Get student name
    echo -ne "${GREEN}➜ ${NC}${BOLD}Enter your name: ${NC}"
    read -r STUDENT_NAME </dev/tty
    STUDENT_NAME="${STUDENT_NAME:-Anonymous Student}"
    
    echo ""
    echo -e "${YELLOW}${BOLD}Ready to begin? Let's see what you know!${NC}"
    echo ""
    
    # Countdown
    for i in 3 2 1; do
        echo -ne "\r${CYAN}Starting in ${i}...${NC}  "
        sleep 1
    done
    echo -e "\r${GREEN}${BOLD}GO!${NC}                         "
    sleep 0.5
    
    clear_screen
    
    # Shuffle questions
    shuffled=($(shuf -i 0-$((TOTAL_QUESTIONS - 1))))
    
    for idx in "${!shuffled[@]}"; do
        clear_screen
        local q_idx="${shuffled[$idx]}"
        local q="${QUESTIONS[$q_idx]}"
        local q_num=$((idx + 1))
        ask_question "$q" "$q_num" "$TOTAL_QUESTIONS"
    done
    
    # Calculate level
    local level=$(get_level "$SCORE" "$TOTAL_QUESTIONS")
    
    clear_screen
    show_loading "🎯 Calculating your results"
    
    show_result_screen "$SCORE" "$TOTAL_QUESTIONS" "$level" "$STUDENT_NAME"
}

# Trap for clean exit
trap '' INT  # Disable Ctrl+C during test

# Run
main

# Re-enable Ctrl+C
trap - INT

exit 0