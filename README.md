# SWJTU Thesis Template

本模板是是基于 LaTeX 的的西南交通大学本科生毕业论文模板

## 使用说明

本模板已经按照 2022 年毕业论文的最新模板修改，如果有不同于教务处官方给出的模板的地方，请以官方模板为准。同时，欢迎各位将修改后的地方提交 Pull Request 至本仓库。

本模板的结构如下：

```text
SWJTU Thesis Template
├── README.md
├── SWJTUBachelorThesis.tex
├── abstract.tex
├── appendix1.tex
├── appendix2.tex
├── chapter1.tex
├── chapter2.tex
├── chapter3.tex
├── chapter4.tex
├── chapter5.tex
├── chapter6.tex
├── chapter7.tex
├── conclusion.tex
├── configuration
│   ├── SWJTU.cls
│   ├── comment&mission.tex
│   ├── commitment&authorization.tex
│   ├── references.tex
│   ├── simhei.ttf
│   ├── simkai.ttf
│   └── simsun.ttf
├── figures
├── ref.bib
└── thanks.tex
```

### 模板个人信息的修改

有关模板个人信息（题目、学号、任务书等随着不同毕设题目而变化的信息）存在于 `configuration/SWJTU.cls` 及 `configuration/comment&mission.tex` 两个文件中。其中，前者为封面信息的修改；后者为任务书信息的修改。

### 模板正文的撰写

模板正文内容包括：摘要、绪论及正文章节、结论、致谢，共四个部分，存放于项目根目录下。目录和参考文献列表将根据内容自动生成。

### 编译方法

使用 XeLaTeX 编译，如果有参考文献的话需要编译四次（xelatex->bibtex->xelatex\*2）。

## TODO

* [ ] 将项目中文件重新安排，以达到内容与格式分离
  * 个人信息（题目、学号、任务书等）单独放入一个文件中
  * 无需修改的部分（例如 cls 文件、字体等放入格式文件夹中）
  * 正文部分放入正文文件夹中

* [ ] 编写详细的文档，使完全不会LaTeX的纯萌新也可以使用
  * 可以参考[北理工本科生毕业论文模板](https://github.com/BITNP/BIThesis)进行编写

## 致谢

~~待完善~~
