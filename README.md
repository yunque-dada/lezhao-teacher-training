# 乐造AI老师培训平台

> 乐造AI教务平台 - 老师培训教程

## 📋 项目概述

- **项目名称**：乐造AI老师培训平台
- **项目类型**：教学资源平台
- **核心功能**：老师培训、零件认识、知识点讲解、PPT教学资源
- **目标用户**：乐造AI乐高/编程课程老师

## 🛠 技术栈

| 技术 | 说明 |
|------|------|
| HTML5 | 页面结构 |
| CSS3 | 样式设计 |
| JavaScript | 交互逻辑 |
| Google Fonts | 字体 |
| GitHub Pages | 部署托管 |

## 📁 目录结构

```
lezao-teacher-training/
├── index.html          # 首页/培训导航
├── knowledge.html      # 知识库
├── parts.html          # 零件大全
├── ppt.html            # PPT教学资源
├── crop-images.ps1     # 图片处理脚本
├── generate_parts.sh   # 零件数据生成
├── assets/             # 静态资源
│   ├── css/
│   ├── js/
│   └── images/
└── README.md          # 开发文档
```

## 📄 页面功能

### 1. 首页 (index.html)
- 培训模块导航
- 课程分类
- 培训进度

### 2. 知识库 (knowledge.html)
- 乐高教学知识点
- 课程大纲
- 教学技巧

### 3. 零件大全 (parts.html)
- 乐高零件分类展示
- 零件编号对照
- 使用场景说明

### 4. PPT资源 (ppt.html)
- 教学PPT下载
- 课程模板
- 家长会PPT

## 🎨 设计系统

### 颜色变量
```css
--primary: #f59e0b;        /* 主色-橙 */
--primary-dark: #d97706;
--primary-light: #fbbf24;
--secondary: #10b981;     /* 成功-绿 */
--accent: #ef4444;        /* 强调-红 */
--dark: #0f172a;
```

### 字体
- 中文：Noto Sans SC
- 英文/数字：Outfit

## 📱 响应式

- 移动端适配：≤768px
- 平板适配：768px-1024px
- 桌面端：>1024px

## 🚀 部署

### GitHub Pages
```bash
cd lezao-teacher-training
git add .
git commit -m "Add docs"
git push
```
部署后访问：https://yunque-dada.github.io/lezao-teacher-training/

## 📝 待完善

- [ ] 更多课程培训内容
- [ ] 在线考试系统
- [ ] 老师认证体系

## 📊 更新日志

| 日期 | 内容 |
|------|------|
| 2026-03-12 | 创建项目 |
| 2026-03-12 | 完成首页和知识库 |
| 2026-03-12 | 添加零件大全页面 |

## 🔗 相关链接

- 在线访问：https://yunque-dada.github.io/lezao-teacher-training/
- GitHub：https://github.com/yunque-dada/lezao-teacher-training

---
*最后更新：2026-03-14*
