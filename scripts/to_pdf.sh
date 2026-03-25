#!/bin/bash
# Professional Research Report Skill - PDF 生成脚本
# 功能：将 Markdown 报告转换为 PDF 格式
# 位置：/home/mk/.openclaw/workspace/skills/professional-research-report/scripts/to_pdf.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(dirname "$SCRIPT_DIR")"

# 显示使用说明
show_usage() {
    echo "专业调研报告 PDF 生成工具"
    echo ""
    echo "用法："
    echo " $0 -i <输入文件> -o <输出文件> [选项]"
    echo ""
    echo "必需参数:"
    echo " -i, --input <文件> 输入的 Markdown 文件"
    echo " -o, --output <文件> 输出的 PDF 文件"
    echo ""
    echo "可选参数:"
    echo " -f, --font <字体> 中文字体（默认：Noto Sans CJK SC）"
    echo " -v, --verbose 详细输出"
    echo " -h, --help 显示帮助"
    echo ""
    echo "示例:"
    echo " $0 -i report.md -o report.pdf"
    echo " $0 -i report.md -o report.pdf -f 'Arial Unicode MS'"
}

# 主函数
main() {
    local input_file=""
    local output_file=""
    local font="Noto Sans CJK SC"
    local verbose=false

    # 解析参数
    while [[ $# -gt 0 ]]; do
        case $1 in
            -i|--input)
                input_file="$2"
                shift 2
                ;;
            -o|--output)
                output_file="$2"
                shift 2
                ;;
            -f|--font)
                font="$2"
                shift 2
                ;;
            -v|--verbose)
                verbose=true
                shift
                ;;
            -h|--help)
                show_usage
                exit 0
                ;;
            *)
                echo "未知参数：$1"
                show_usage
                exit 1
                ;;
        esac
    done

    # 验证必需参数
    if [[ -z "$input_file" || -z "$output_file" ]]; then
        echo "错误：缺少必需参数"
        show_usage
        exit 1
    fi

    # 检查输入文件是否存在
    if [[ ! -f "$input_file" ]]; then
        echo "错误：输入文件不存在：$input_file"
        exit 1
    fi

    # 检查 pandoc 是否安装
    if ! command -v pandoc &> /dev/null; then
        echo "错误：未找到 pandoc，请先安装"
        echo "安装方法：sudo apt-get install pandoc"
        exit 1
    fi

    # 检查 xelatex 是否安装
    if ! command -v xelatatex &> /dev/null; then
        echo "错误：未找到 xelatex，请先安装 texlive-xetex"
        echo "安装方法：sudo apt-get install texlive-xetex texlive-lang-chinese"
        exit 1
    fi

    if [[ "$verbose" == true ]]; then
        echo "生成 PDF..."
        echo "  输入：$input_file"
        echo "  输出：$output_file"
        echo "  字体：$font"
    fi

    # 使用 pandoc 转换
    pandoc "$input_file" \
        -o "$output_file" \
        --pdf-engine=xelatex \
        -V mainfont="$font" \
        -V CJKmainfont="$font" \
        -V geometry:margin=2cm \
        -V documentclass=report

    if [[ "$verbose" == true ]]; then
        echo "✓ PDF 生成成功：$output_file"
        ls -lh "$output_file"
    fi
}

# 执行主函数
main "$@"
