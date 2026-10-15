# Verilog / SystemVerilog 学习仓库

> 数字 IC 验证方向的自学记录：从 Verilog 基础到 SystemVerilog / UVM 验证平台。
> 目标：2028 届秋招，数字 IC 验证岗。

## 仓库结构

```
verilog-ssy-2026 start/
├── hdlbits/          # HDLBits 刷题代码（按题目顺序编号）
├── projects/         # 完整项目（UART / FIFO / SPI / UVM 验证平台）
└── notes/            # 学习笔记与踩坑记录
```

## 学习进度

### HDLBits 刷题（https://hdlbits.01xz.net）

| 章节 | 进度 | 说明 |
|---|---|---|
| Getting Started | ✅ 2/2 | 入门 |
| Verilog Language · Basics | ✅ 8/8 | `assign`、位运算符、用 wire 拆解电路 |
| Verilog Language · Vectors | 🔄 进行中 | 总线声明、部分选择、拼接、复制运算符、位序 |
| Verilog Language · Modules: Hierarchy | ⬜ 未开始 | 模块例化、端口连接 |

### 项目

| 项目 | 状态 | 关键点 |
|---|---|---|
| UART 收发器 | ⬜ 计划中 | 波特率分频、状态机、跨时钟域 |
| 同步 / 异步 FIFO | ⬜ 计划中 | 格雷码指针、CDC、空满判断 |
| SPI Master | ⬜ 计划中 | 时序、CPOL / CPHA |
| APB Slave UVM 验证环境 | ⬜ 计划中 | UVM 基础流程、覆盖率 |
| AXI-Lite Slave UVM 验证 | ⬜ 计划中 | 覆盖率驱动验证（CDV） |

## 工具链

| 工具 | 用途 | 状态 |
|---|---|---|
| Vivado ML Standard | RTL 综合、仿真、上板 | 已安装 |
| VS Code + Verilog-HDL 扩展 | 代码编写 | 已配置 |
| Git / GitHub Desktop | 版本管理 | 使用中 |
| HDLBits | 在线刷题与仿真 | 使用中 |

## 说明

- 本仓库所有代码均为本人独立编写，题目来源已在文件注释中标注。
- `hdlbits/` 目录下为 HDLBits 在线题目的解答，仅用于个人学习记录。
