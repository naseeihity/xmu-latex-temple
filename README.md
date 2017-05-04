# xmu-latex-temple
## 厦门大学本科毕业论文 Latex 模板(2017届)
按照2017届的毕业论文规范修改。
### 结构

```
-- figures\ 存储图片
-- pages\ 所有章节的页面
   -- cover.tex  封面
   -- thanks.tex 致谢
   -- abstract.tex  摘要
   -- chapter*.tex 章节
   -- references.tex 参考文献
-- xmuTemple.tex 主体
-- xmuthesis.cls  相关设置
```

### 用法
编译`xmuTemple.tex`即可得到输出结果。内容通过`pages`文件夹中的文件填充。设置需要修改的在`xmuthesis.cls`中进行修改。

## 参考
本模板修改自 [2015厦门大学本科毕业论文 latex 模板](https://github.com/wwwxmu/-Latex-),主要修复了原模板的一些问题，增加了一些有用的 package，并对文件结构进行了优化，更便于复用，同时针对2017届的论文要求进行了一定的修改。

latex 的使用也是照猫画虎，有问题请自行 Google。