# OpenClaw Professional Research Report Skill

[English](#english) | [中文](#中文)

---

## English

### Overview

Professional Research Report Skill is an OpenClaw skill for generating high-quality research reports following MBB/Big 4/Gartner standards.

### Features

- ✅ **MBB/Big 4 Standard**: Professional report structure
- ✅ **Multiple Frameworks**: SWOT, PESTEL, Porter Five Forces
- ✅ **Data Annotation**: Mandatory source citations
- ✅ **SMART Recommendations**: Actionable advice templates
- ✅ **10-Dimension Quality Evaluation**: Self-assessment system
- ✅ **AI对抗训练**: Multi-round quality improvement through adversarial review

### Installation

#### 1. Install via GitHub (Recommended)

```bash
# Clone to OpenClaw skills directory
cd ~/.openclaw/skills
git clone https://github.com/milkoor/openclaw-professional-research-report.git

# Restart OpenClaw
openclaw gateway restart
```

#### 2. Install via OpenClaw CLI

```bash
openclaw skills install professional-research-report
```

### Usage

#### Generate a Report

```bash
# Using the included script
./scripts/generate.sh -t "Your Topic" -o "output.md"

# Options:
# -t: Report topic (required)
# -o: Output file (required)
# -w: Target word count (default: 6000)
# -f: Analysis frameworks (default: SWOT,PESTEL)
# -s: Apply SMART principles
# -v: Verbose output
```

### Quality Training

```bash
# Improve report quality through AI adversarial training
./scripts/train.sh -r "your_report.md" -o "training_output/" -t 4.5

# Options:
# -r: Report file (required)
# -o: Output directory (required)
# -t: Target score (default: 4.0)
# -m: Max iterations (default: 5)
# -q: Quick mode
# -v: Verbose output
```

### 10-Dimension Quality Evaluation

| Dimension | Weight | Description |
|-----------|--------|-------------|
| Structure Completeness | 10% | Standard structure coverage |
| Executive Summary | 15% | Understandable in 5 minutes |
| Data Annotation Rate | 20% | Source citation completeness |
| Multi-Source Verification | 10% | Key data verification |
| Framework Application | 10% | Analysis framework usage |
| Action Title Rate | 10% | Conclusion-style titles |
| SMART Recommendation Rate | 10% | SMART-compliant advice |
| Logical Chain | 5% | Insight → Analysis → Recommendation |
| Predictive | 5% | Future trend forecasting |
| Benchmark Analysis | 5% | Industry best practices |

### File Structure

```
professional-research-report/
├── SKILL.md                  # Skill documentation
├── scripts/
│   ├── generate.sh          # Report generation script
│   └── to_pdf.sh            # PDF conversion script
├── GITHUB_UPDATE_SUMMARY.md # Update history
└── 验证报告.md               # Verification report
```

### Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0.0 | 2026-03-19 | Initial release with MBB standards |

### License

MIT License

---

## 中文

### 概述

专业调研报告技能是 OpenClaw 的技能，用于生成符合 MBB/Big 4/Gartner 标准的高质量调研报告。

### 功能特性

- ✅ **MBB/Big 4 标准**：专业报告结构
- ✅ **多种分析框架**：SWOT、PESTEL、波特五力
- ✅ **数据标注**：强制来源引用
- ✅ **SMART 建议**：可操作建议模板
- ✅ **10 维度质量评估**：自我评估系统
- ✅ **AI 对抗训练**：通过多轮对抗评审提升质量

### 安装

#### 1. 通过 GitHub 安装（推荐）

```bash
# 克隆到 OpenClaw skills 目录
cd ~/.openclaw/skills
git clone https://github.com/milkoor/openclaw-professional-research-report.git

# 重启 OpenClaw
openclaw gateway restart
```

#### 2. 通过 OpenClaw CLI 安装

```bash
openclaw skills install professional-research-report
```

### 使用方法

#### 生成报告

```bash
# 使用附带的脚本
./scripts/generate.sh -t "您的主题" -o "输出.md"

# 选项：
# -t: 报告主题（必需）
# -o: 输出文件（必需）
# -w: 目标字数（默认：6000）
# -f: 分析框架（默认：SWOT,PESTEL）
# -s: 应用 SMART 原则
# -v: 详细输出
```

### 质量训练

```bash
# 通过 AI 对抗训练提升报告质量
./scripts/train.sh -r "您的报告.md" -o "训练输出/" -t 4.5

# 选项：
# -r: 报告文件（必需）
# -o: 输出目录（必需）
# -t: 目标分数（默认：4.0）
# -m: 最大迭代次数（默认：5）
# -q: 快速模式
# -v: 详细输出
```

### 10 维度质量评估

| 维度 | 权重 | 说明 |
|------|------|------|
| 结构完整性 | 10% | 标准结构覆盖率 |
| 执行摘要 | 15% | 5 分钟可理解 |
| 数据标注率 | 20% | 数据来源标注完整性 |
| 多源验证率 | 10% | 关键数据多源验证 |
| 框架应用 | 10% | 分析框架使用 |
| 行动标题率 | 10% | 结论式标题比例 |
| SMART 建议率 | 10% | 建议符合 SMART 原则 |
| 逻辑链条 | 5% | 发现→分析→建议连贯性 |
| 预测性 | 5% | 未来趋势预测 |
| 对标分析 | 5% | 行业最佳实践对比 |

### 文件结构

```
professional-research-report/
├── SKILL.md                  # 技能文档
├── scripts/
│   ├── generate.sh          # 报告生成脚本
│   └── to_pdf.sh           # PDF 转换脚本
├── GITHUB_UPDATE_SUMMARY.md # 更新历史
└── 验证报告.md               # 验证报告
```

### 版本历史

| 版本 | 日期 | 变更 |
|------|------|------|
| 1.0.0 | 2026-03-19 | 初始版本，MBB 标准 |

### 许可证

MIT License

---

**作者**: 杨博  
**最后更新**: 2026-03-25