# 🌟 2PM 專屬介紹 App (Flutter)

這是一個使用 Flutter 打造的「2PM (투피엠)」非官方專屬介紹 App。為 Flutter 課堂作業，展示了成員的基本資料、特殊事蹟，並結合豐富的 UI 排版與動畫效果。

## ✨ 特色功能 (Features)

* **動態公告跑馬燈**：首頁包含一個自動輪播的公告欄，使用自訂的由下而上翻滾動畫 (`SlideTransition`)。
* **專屬應援色設計**：點擊成員卡片後，彈出的詳細資料視窗 (`Dialog`) 會根據不同成員切換專屬的應援底色。
* **豐富的圖文排版**：防呆的文字排版設計，確保文字過長時會自動換行而不溢出螢幕 (`Expanded`)。
* **雙向滾動體驗**：
  * 首頁與詳細資料頁支援**垂直滾動** (`SingleChildScrollView`)。
  * 詳細資料頁底部包含「More about me」照片牆，支援**水平滾動** (`scrollDirection: Axis.horizontal`)。

## 🛠️ 使用的技術與 Widget (Tech Stack)

本專案完美契合了課堂作業的要求，實作了以下 Widget：

* **核心必用 Widget**：
  `Text`, `Image`, `Icon`, `Column`, `Row`, `Color`, `Stack`, `SingleChildScrollView`
* **進階排版與裝飾 Widget**：
  `Container`, `Padding`, `SizedBox`, `Expanded`, `Positioned`, `SafeArea`, `Divider`, `CircleAvatar`, `ClipRRect` (裁切圓角)
* **狀態管理與動畫**：
  * `StatelessWidget`：用於建構主畫面、成員卡片與對話框。
  * `StatefulWidget`：搭配 `Timer` 與 `AnimatedSwitcher` 實作狀態改變的跑馬燈動畫。

  ## 📸 畫面預覽 (Screenshots)

<p align="center">
  <img src="https://github.com/user-attachments/assets/d0caff3a-58da-460d-95d8-2fcfba29703d" width="250" />
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/8288b877-b103-4be5-80ac-33a56a2ad5cb" width="250" />
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/015b7424-06f0-405d-b347-0d40d181837f" width="250" />
</p>


