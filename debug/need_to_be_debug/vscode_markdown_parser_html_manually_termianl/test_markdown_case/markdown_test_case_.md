
# Markdown

## 簡述Elements

Markdown是一种轻量级标记语言，创始人为約翰·格魯伯(**[John Gruber](https://daringfireball.net/)**）。它允许人们“使用易读易写的纯文本格式编写文档，然后转换成有效的XHTML（或者HTML）文档”。这种语言吸收了很多在电子邮件中已有的纯文本标记的特性。

追溯 **Markdown** 这个词的来源，应该是为了致敬编写网页所用的[HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)（Hyper Text Markup Language 超文本标记语言）中的 **markup** 。

## 現況Now

由於Markdown的輕量化、易讀易寫特性，並且對於圖片，圖表、數學式都有支援，目前許多網站都廣泛使用 Markdown 來撰寫說明文件或是用於論壇上發表訊息。例如：GitHub、reddit、Diaspora、Stack Exchange、OpenStreetMap 、SourceForge等。甚至Markdown能被使用來撰寫電子書。

## 語法Syntax

[Markdown: Syntax](https://daringfireball.net/projects/markdown/syntax)

## 舉例Example

### 標題Headers

# 一級標題This is an H1

## 二級標題This is an H2

### 三級標題This is an H3

#### 四級標題This is an H4

##### 五級標題This is an H5

###### 六級標題This is an H6

### 正文Mainbody

換行以後直接書寫，不加任何符號。

### 段落Paragraphs

一個段落以一個自然的  **回車** 作為換行分隔。

### 重點Emphasis

#### 傾斜

*傾斜*  文字段前後都接一個接個星號

#### 加粗

**加粗** 文字段前後都接兩個星號

#### 傾斜並加粗

***傾斜並加粗*** 文字段前後都接三個星號

### 引用Blockquotes

這是一段引用***>*** Markdown維基百科

### 列表Lists

#### 無序列表Unordered(Bulleted)

使用*** - +** 中任何一個符號加空格就可以創建無序列表，

*** **這是一個無序列表

*** **這是一個無序列表

**+ ** 這是一個無序列表

​	**- **這是一個無序列表

#### 有序列表Ordered(Numbered)

使用**數字+點+空格+內容** 創建有序列表

**1. **這是一個無序列表

**2. **這是一個無序列表

**3. ** 這是一個無序列表

​	**1. **這是一個無序列表

列表可以嵌套，使用時在嵌套列表前按***tab***或***空格***來控制縮進。

### 鏈接Links

[維基百科Markdown](https://zh.wikipedia.org/wiki/Markdown)

鏈接內容兩邊都用一個用方括號後接圓括號包裹的連接地址。

<https://zh.wikipedia.org/wiki/Markdown>

或可以直接用尖括號包含網址的方式**<http://www.jianshu.com>**來直接構造一個可點擊的鏈接。

### 圖片Images

![Markdonw Logo](https://upload.wikimedia.org/wikipedia/commons/4/48/Markdown-mark.svg)

像構造一個鏈結一樣，只需要在前面加感嘆號***！***

### 代碼Code

markdown也常用來編寫代碼文檔，因此文檔中引入代碼必不可少。

+ 代碼塊Code blocks

使用  ’` 符號包裹代碼構建一個代碼塊，`‘ 符號在左上角esc鍵下方，請在半角狀態輸入。一些markdown工具支持更簡單的按tab縮進方式。

​	console.log(`這是一個代碼塊`);

+ 代碼段Code paragraph

使用

***```***

 代碼段

**```**

這樣的方式來構建一個多行的代碼段。

```python
print('Hello, world!')
```

``` javascript
console.log("Hello World!");
```

```c++
#include <iostream>
2 
3 int main()
4 {
5     std::cout << "Hello, world!\n";
6 }
```

### 保存Save

最後將markdown編寫的文檔存為 .md 格式，就可以用對應的工具查看效果和編輯了。
