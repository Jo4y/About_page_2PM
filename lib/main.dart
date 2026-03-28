import 'package:flutter/material.dart';
import 'dart:async'; // 用於 Timer

void main() {
  runApp(const IdolGroupApp());
}

// 1. 自訂 StatelessWidget：App 根節點
class IdolGroupApp extends StatelessWidget {
  const IdolGroupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Idol Group Info',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      ),
      home: const GroupHomePage(),
    );
  }
}

// 2. 自訂 StatelessWidget：團體主頁
class GroupHomePage extends StatelessWidget {
  const GroupHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 6 個成員的資料
  final List<Map<String, dynamic>> members = [
    {
      'name': 'JUN. K', 'role': '主唱', 'img': 'assets/images/jk1.png', 'img2': 'assets/images/jk2.png', 'img3': 'assets/images/jk3.png','img4': 'assets/images/jk4.png','img5': 'assets/images/jk5.png', 'bio1': '忘記關麥在後台大唱BobiBobi', 'specialty': '高音信手拈來、即興和音、會作詞作曲版權費滾滾來',
      'color': Colors.pink.shade50, 'birthday': '1988.01.15', 'name_2': '金旼俊 김민준', 'nickname':'金丟丟、大邱爺爺、金多情、金波比、放送Man',
    },
    {
      'name': 'Nichkhun', 'role': '門面', 'img': 'assets/images/nk1.png', 'img2': 'assets/images/nk2.png', 'img3': 'assets/images/nk3.png', 'img4': 'assets/images/nk4.png', 'img5': 'assets/images/nk5.png', 'bio1': 'K-Pop第一個泰國人', 'specialty': '粉絲名為Queenie、美泰混血、精通韓美泰日華語',
      'color': Colors.red.shade50, 'birthday': '1988.06.24', 'name_2': '尼坤 นิชคุณ หรเวชกุล', 'nickname': '泰國王子、Wink販賣機、Khunnie、實權坤、萬能的泰國人',
    },
    {
      'name': 'Taecyeon', 'role': 'Rapper', 'img': 'assets/images/tk1.png', 'img2': 'assets/images/tk2.png', 'img3': 'assets/images/tk3.png', 'img4': 'assets/images/tk4.png', 'img5': 'assets/images/tk5.png', 'bio1': '諧咖但其實是多益滿分腦性男', 'specialty': '放棄美國國籍投身韓國軍隊、偶像演員雙棲、跟李俊昊扳手腕把自己左手扳斷',
      'color': Colors.green.shade50, 'birthday': '1988.12.27', 'name_2': '玉澤演 옥택연', 'nickname': '韓國隊長、撕澤演、玉貓、玉傻、玉網民、玉少女',
    },
    {
      'name': 'Wooyoung', 'role': '主舞', 'img': 'assets/images/wy1.png', 'img2': 'assets/images/wy2.png', 'img3': 'assets/images/wy3.png', 'img4': 'assets/images/wy4.png', 'img5': 'assets/images/wy5.png', 'bio1': '後悔沒投資JYPE的股票 漲了16倍', 'specialty': '作詞作曲、美麗小朋友第一名、綜藝咖、重度黑膠愛好者擁有7000張',
      'color': Colors.blue.shade50, 'birthday': '1989.04.30', 'name_2': '張祐榮 장우영', 'nickname': '張肉肉，屋用一，張烏冬，張大寶，張博士，張昂昂',
    },
    {
      'name': 'Junho', 'role': 'ACE', 'img': 'assets/images/jh1.png', 'img2': 'assets/images/jh2.png', 'img3': 'assets/images/jh3.png', 'img4': 'assets/images/jh4.png', 'img5': 'assets/images/jh5.png', 'bio1': '可以用屁股一口氣夾斷28根竹筷', 'specialty': '偶像演員雙棲、首個偶像出身百想視帝、把玉澤演左手扳斷',
      'color': Colors.yellow.shade50, 'birthday': '1990.01.25', 'name_2': '李俊昊 이준호', 'nickname': '鞠諾、少爺、小皇帝、李Fox、李惡童、我們家俊昊',
    },
    {
      'name': 'Chansung', 'role': '忙內', 'img': 'assets/images/cs1.png', 'img2': 'assets/images/cs2.png', 'img3': 'assets/images/cs3.png', 'img4': 'assets/images/cs4.png', 'img5': 'assets/images/cs5.png', 'bio1': '可以一次吃49根香蕉', 'specialty': '年紀最小但全團最可靠、團中第一個人夫人父、大胃王',
      'color': Colors.purple.shade50, 'birthday': '1990.02.11', 'name_2': '黃燦盛 황찬성', 'nickname': '燦娜娜、黃燦、可靠的忙內、香蕉燦、贊成',
    },
  ];
    return Scaffold(
      body: SafeArea(
        // 讓畫面可上下捲動
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 團體封面
              Image.asset(
                'assets/images/2pm.png',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              
              // slogan
              const Padding( 
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Don\'t Stop! Can\'t Stop! 2PM GO ✨',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(height: 40, thickness: 2),

              // 自訂的輪播元件
              const GroupMarquee(),
              
              const Text(
                '成員介紹 (點擊卡片查看更多)',
                style: TextStyle(fontSize: 8, color: Colors.grey),
              ),
              const SizedBox(height: 16),

              // 成員清單：垂直排列卡片
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: members.map((member) {
                    return MemberCard(
                      name: member['name']!,
                      imageUrl: member['img']!,
                      imageUrl2: member['img2']!,
                      imageUrl3: member['img3']!,
                      imageUrl4: member['img4']!,
                      imageUrl5: member['img5']!,
                      role: member['role']!,
                      bio1: member['bio1']!, 
                      specialty: member['specialty']!,
                      cardColor: member['color'],
                      birthday: member['birthday'],
                      name_2: member['name_2'],
                      nickname: member['nickname'],
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

// 3. 自訂 StatelessWidget：成員長方形卡片
class MemberCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String imageUrl2;
  final String imageUrl3;
  final String imageUrl4;
  final String imageUrl5;
  final String role;
  final String bio1;
  final String specialty;
  final Color cardColor;
  final String birthday;
  final String name_2;
  final String nickname;
  
  const MemberCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.imageUrl4,
    required this.imageUrl5,
    required this.role,
    required this.bio1,
    required this.specialty,
    required this.cardColor,
    required this.birthday,
    required this.name_2,
    required this.nickname,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 點擊後顯示詳細 Dialog
        showDialog(
          context: context,
          builder: (context) => MemberDetailDialog(
            name: name,
            imageUrl: imageUrl,
            imageUrl2: imageUrl2,
            imageUrl3: imageUrl3,
            imageUrl4: imageUrl4,
            imageUrl5: imageUrl5,
            role: role,
            bio1: bio1, 
            specialty: specialty,
            birthday: birthday,
            dialogColor: cardColor,
            name_2: name_2,
            nickname: nickname,
          ),
        );
      },
      child: Container( // 製作長方格背景
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        // 左邊文字、右邊頭像
        child: Row(
          children: [
            // 文字區塊填滿左邊剩餘空間
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(role, style: const TextStyle(fontSize: 16, color: Colors.black54)),
                  const SizedBox(height: 8),
                  Text(
                    bio1, 
                    style: const TextStyle(color: Colors.grey),
                    maxLines: 1, // 預覽資料限制一行
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // 右側：成員頭像
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(imageUrl),
            ),
          ],
        ),
      ),
    );
  }
}

// 4. 自訂 StatelessWidget：彈出的成員詳細資料方框
class MemberDetailDialog extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String imageUrl2;
  final String imageUrl3;
  final String imageUrl4;
  final String imageUrl5;
  final String role;
  final String bio1; 
  final String specialty;
  final String birthday;
  final Color dialogColor;
  final String name_2;
  final String nickname;
  
  const MemberDetailDialog({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.imageUrl4,
    required this.imageUrl5,
    required this.role,
    required this.bio1,
    required this.specialty,
    required this.birthday,
    required this.dialogColor,
    required this.name_2,
    required this.nickname,
  });

  @override
  Widget build(BuildContext context) {
    // 使用較小的 Dialog 顯示詳細資料
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: dialogColor,
      // 裁切超出圓角的內容
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          // Dialog 的高度固定為手機螢幕總高度的 70%
          height: MediaQuery.of(context).size.height * 0.7,
          child: SingleChildScrollView( // 對話框內也可以滾動
            child: Column(
              //mainAxisSize: MainAxisSize.min, // 讓視窗高度根據內容自動縮放
              children: [
                // 疊加對話框頂部的背景、大頭貼與關閉按鈕
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    // 頂部 Banner 背景
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageUrl2),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
                        ),
                      ),
                    ),
                    // 關閉按鈕
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    // 置中的大頭貼
                    Positioned(
                      bottom: -40,
                      child: CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(imageUrl),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50), // 留空間給突出來的頭像
                
                // 詳細資料區塊
                Text(name, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                Text(role, style: const TextStyle(fontSize: 16, color: Colors.black54)),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Bio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),

                      // Column 垂直排列，用 Expanded 避免溢出
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 群組 1：姓名
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start, // 讓圖示對齊文字頂部
                            children: [
                              const Icon(Icons.person, color: Colors.grey, size: 20),
                              const SizedBox(width: 8),
                              // 文字過長時自動換行
                              Expanded(
                                child: Text('姓名：$name_2', style: const TextStyle(fontSize: 15)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          
                          // 群組 2：生日
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.cake, color: Colors.grey, size: 20),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text('生日：$birthday', style: const TextStyle(fontSize: 15)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          
                          // 群組 3：暱稱
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.loyalty, color: Colors.grey, size: 20),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text('暱稱：$nickname', style: const TextStyle(fontSize: 15)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(height: 30),
                      
                      const Text('Highlights...💭', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      // 必用要求：Row
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.grey, size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text('$specialty', style: const TextStyle(fontSize: 15)),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),
                      const Divider(height: 30),
                      
                      const Text('More about me... 📸', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 12),

                      // 水平捲動圖片區
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            // 第 1 張照片
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                imageUrl3, 
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 12), // 照片之間的水平間距

                            // 第 2 張照片
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                imageUrl4,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 12),

                            // 第 3 張照片
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                imageUrl5,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30), // 底部留白
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 5. 自訂 StatefulWidget：細長方格的文字輪播 (跑馬燈效果)
class GroupMarquee extends StatefulWidget {
  const GroupMarquee({super.key});

  @override
  State<GroupMarquee> createState() => _GroupMarqueeState();
}

class _GroupMarqueeState extends State<GroupMarquee> {
  // 團體介紹文字
  final List<String> _announcements = [
    '🔥 歡迎來到 2PM 非官方專屬 App',
    '🎤 出道日：2008.09.04',
    '✨ 始祖野獸派偶像',
    '🎤 名曲：Heartbeat、Hands Up、My House',
    '👑 粉絲名：Hottest'
  ];
  
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // 每 2 秒切換一次文字
    _timer = Timer.periodic(const Duration(seconds: 2), (_) {
      setState(() {
        // 索引值循環
        _currentIndex = (_currentIndex + 1) % _announcements.length;
      });
    });
  }

  @override
  void dispose() {
    // 元件銷毀時關閉計時器
    _timer?.cancel();
    super.dispose();
  }

@override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      // 裁切超出容器範圍的內容
      clipBehavior: Clip.hardEdge, 
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600), // 翻滾動畫的持續時間
        transitionBuilder: (Widget child, Animation<double> animation) {
          // 判斷新字或舊字
          final isIncoming = child.key == ValueKey<int>(_currentIndex);
          
          // 設定滑動軌跡
          final slideOffset = Tween<Offset>(
            begin: isIncoming ? const Offset(0.0, 1.0) : const Offset(0.0, -1.0),
            end: Offset.zero,
          ).animate(animation);

          // 文字滑動轉場
          return SlideTransition(
            position: slideOffset,
            child: child,
          );
        },
        child: Text(
          _announcements[_currentIndex],
          key: ValueKey<int>(_currentIndex), 
          style: TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}