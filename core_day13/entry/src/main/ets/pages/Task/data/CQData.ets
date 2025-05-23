// 字符串联合类型
export type HeroType = '剑士' | '骑士' | '弓手' | '猎人' | '法师' | '祭司'

export interface NavItem {
  icon: ResourceStr
  type: HeroType
}


export interface Hero {
  id: number
  heroName: string
  heroIcon: ResourceStr
  skillName: string
  skillIcon: ResourceStr
  weaponName: string
  weaponIcon: ResourceStr
  type: HeroType
}

export class CQData {
  // 获取顶部的导航数组
  static getNavList(): NavItem[] {
    return [
      { icon: $r('app.media.ic_nav_01'), type: '剑士' },
      { icon: $r('app.media.ic_nav_02'), type: '骑士' },
      { icon: $r('app.media.ic_nav_03'), type: '弓手' },
      { icon: $r('app.media.ic_nav_04'), type: '猎人' },
      { icon: $r('app.media.ic_nav_05'), type: '法师' },
      { icon: $r('app.media.ic_nav_06'), type: '祭司' },

    ]
  }

  // 获取所有的英雄数据
  static getHeroList(): Hero[] {
    return [
      {
        id: 1,
        heroName: '菲莉丝',
        heroIcon: 'http://p6.qhimg.com/dr/72__/t01ff60081fb50ab896.png',
        skillName: '治愈',
        skillIcon: 'http://p2.qhimg.com/dr/52__/t01f2006a7bff69cf95.png',
        weaponName: '库珥修赐予的剑',
        weaponIcon: 'http://p2.qhimg.com/dr/45__/t013e4e1e3c2086df12.png',
        type: '祭司',
      },
      {
        id: 2,
        heroName: '首席舞蹈家李',
        heroIcon: 'http://p8.qhimg.com/dr/72__/t0191e8a0790f0b733b.png',
        skillName: '风之舞',
        skillIcon: 'http://p7.qhimg.com/dr/52__/t01ca144fb87b82c585.png',
        weaponName: '百花盛开',
        weaponIcon: 'http://p9.qhimg.com/dr/45__/t01778796fc02d9b9f9.png',
        type: '弓手',
      },
      {
        id: 3,
        heroName: '诺拉·瓦尔基里',
        heroIcon: 'http://p9.qhimg.com/dr/72__/t016882b548661c3844.png',
        skillName: '钢炎之心',
        skillIcon: 'http://p1.qhimg.com/dr/52__/t01f1c77f4038e01513.png',
        weaponName: '神威战锤',
        weaponIcon: 'http://p7.qhimg.com/dr/45__/t01d95592f8f8ee1a17.png',
        type: '猎人',
      },
      {
        id: 4,
        heroName: '约定之维多利亚',
        heroIcon: 'http://p0.qhimg.com/dr/72__/t0132019919fd8fb96b.png',
        skillName: '胜利之旗',
        skillIcon: 'http://p4.qhimg.com/dr/52__/t01b626886090d8969d.png',
        weaponName: '战场的约定',
        weaponIcon: 'http://p9.qhimg.com/dr/45__/t018b6f889e1e743e06.png',
        type: '剑士',
      },
      {
        id: 5,
        heroName: '战神阿基里斯',
        heroIcon: 'http://p5.qhimg.com/dr/72__/t01731c13476d7e3b2a.png',
        skillName: '拒马',
        skillIcon: 'http://p5.qhimg.com/dr/52__/t0111cfd9c4db47159c.png',
        weaponName: '永恒灭霸',
        weaponIcon: 'http://p4.qhimg.com/dr/45__/t01b2c38ffed02e5b6f.png',
        type: '骑士',
      },
      {
        id: 6,
        heroName: '独狼琳赛',
        heroIcon: 'http://p9.qhimg.com/dr/72__/t0138d8b0661e0509ae.png',
        skillName: '炸弹箭',
        skillIcon: 'http://p4.qhimg.com/dr/52__/t01d870483c4162099e.png',
        weaponName: '爆炸弓',
        weaponIcon: 'http://p8.qhimg.com/dr/45__/t015fc560d98d085260.png',
        type: '弓手',
      },
      {
        id: 7,
        heroName: '露比·罗丝',
        heroIcon: 'http://p1.qhimg.com/dr/72__/t01c17fc660ac299179.png',
        skillName: '尘晶弹',
        skillIcon: 'http://p6.qhimg.com/dr/52__/t01e101ada72529fa26.png',
        weaponName: '新月玫瑰',
        weaponIcon: 'http://p9.qhimg.com/dr/45__/t017b9126910be61bf3.png',
        type: '猎人',
      },
      {
        id: 8,
        heroName: '莉柯妲·贝尔戴因',
        heroIcon: 'http://p2.qhimg.com/dr/72__/t0133cf1821719a99a5.png',
        skillName: '螺旋牙击',
        skillIcon: 'http://p3.qhimg.com/dr/52__/t0154023c1e4e354105.png',
        weaponName: '雷棍-建御雷神',
        weaponIcon: 'http://p6.qhimg.com/dr/45__/t013f207aada0caaf0e.png',
        type: '骑士',
      },
      {
        id: 9,
        heroName: '救世的圣母玛利亚',
        heroIcon: 'http://p1.qhimg.com/dr/72__/t01d07b708528503e24.png',
        skillName: '召唤圣物',
        skillIcon: 'http://p9.qhimg.com/dr/52__/t017400ca80d54cd28c.png',
        weaponName: '米开朗基罗',
        weaponIcon: 'http://p6.qhimg.com/dr/45__/t01b6c47129a4230ce0.png',
        type: '祭司',
      },
      {
        id: 10,
        heroName: '爱蜜莉雅',
        heroIcon: 'http://p4.qhimg.com/dr/72__/t01287a1e3ef5680b0c.png',
        skillName: '修玛',
        skillIcon: 'http://p9.qhimg.com/dr/52__/t01ca0ad230ae4df478.png',
        weaponName: '司掌火焰的大精灵帕克',
        weaponIcon: 'http://p0.qhimg.com/dr/45__/t0180fb831c29c7be8e.png',
        type: '法师',
      },
      {
        id: 11,
        heroName: '觉醒的冰结师洛琪艾丝',
        heroIcon: 'http://p0.qhimg.com/dr/72__/t018464811e3a58689c.png',
        skillName: '冰洁法阵',
        skillIcon: 'http://p0.qhimg.com/dr/52__/t01bb839d008aa441e8.png',
        weaponName: '冰洁之花',
        weaponIcon: 'http://p1.qhimg.com/dr/45__/t01cbb40e5d19ddd3ff.png',
        type: '法师',
      },
      {
        id: 12,
        heroName: '必胜的罗什福尔',
        heroIcon: 'http://p7.qhimg.com/dr/72__/t0128606756896a4dce.png',
        skillName: '利刃华尔兹',
        skillIcon: 'http://p7.qhimg.com/dr/52__/t01b5035998001a2617.png',
        weaponName: '蹑影追风剑',
        weaponIcon: 'http://p0.qhimg.com/dr/45__/t013653b2a9f0316005.png',
        type: '剑士',
      },
      {
        id: 13,
        heroName: '夜魔女麻美',
        heroIcon: 'http://p3.qhimg.com/dr/72__/t01041f309c07e17ae0.png',
        skillName: '最终歼灭之枪',
        skillIcon: 'http://p1.qhimg.com/dr/52__/t01d55fd349fe427aa3.png',
        weaponName: '发光的黑暗',
        weaponIcon: 'http://p4.qhimg.com/dr/45__/t011a4cf42ffc8bff36.png',
        type: '猎人',
      },
      {
        id: 14,
        heroName: '圣魔该隐',
        heroIcon: 'http://p9.qhimg.com/dr/72__/t018cb139085a2e683d.png',
        skillName: '混沌漩涡',
        skillIcon: 'http://p3.qhimg.com/dr/52__/t012d89eaf5401d8d47.png',
        weaponName: '灿然辉耀的王斧',
        weaponIcon: 'http://p4.qhimg.com/dr/45__/t011bf7fb7d39c593b5.png',
        type: '骑士',
      },
      {
        id: 15,
        heroName: '月亮花伊吹',
        heroIcon: 'http://p9.qhimg.com/dr/72__/t01abeb94868d4aba3e.png',
        skillName: '兔子猛击！',
        skillIcon: 'http://p4.qhimg.com/dr/52__/t011a532fa6882686b7.png',
        weaponName: '杀手兔',
        weaponIcon: 'http://p3.qhimg.com/dr/45__/t01f7a31d97864c1c9e.png',
        type: '法师',
      },
      {
        id: 16,
        heroName: '布蕾克·贝拉多娜',
        heroIcon: 'http://p8.qhimg.com/dr/72__/t019f9c44f57d3f68fc.png',
        skillName: '蝴蝶乱舞',
        skillIcon: 'http://p8.qhimg.com/dr/52__/t0110a121ba9ab488a9.png',
        weaponName: '跃影飞绫',
        weaponIcon: 'http://p4.qhimg.com/dr/45__/t0115aead2fe28886f9.png',
        type: '剑士',
      },
      {
        id: 17,
        heroName: '圣都之守护者诺埃尔',
        heroIcon: 'http://p8.qhimg.com/dr/72__/t017e24e8acfd0a222c.png',
        skillName: '圣都之祈祷',
        skillIcon: 'http://p1.qhimg.com/dr/52__/t017a4148e1b669c589.png',
        weaponName: '光之闪耀',
        weaponIcon: 'http://p1.qhimg.com/dr/45__/t01397efcc55a88de8a.png',
        type: '祭司',
      },
      {
        id: 18,
        heroName: '阎罗使者桂香',
        heroIcon: 'http://p0.qhimg.com/dr/72__/t01d483a1c02dff97d3.png',
        skillName: '恶灵退散',
        skillIcon: 'http://p4.qhimg.com/dr/52__/t01bd881084b2ef0d49.png',
        weaponName: '黄泉引路人',
        weaponIcon: 'http://p7.qhimg.com/dr/45__/t01327c353d8cbe75ce.png',
        type: '法师',
      },
      {
        id: 19,
        heroName: '麻宫雅典娜',
        heroIcon: 'http://p3.qhimg.com/dr/72__/t01a7333d19a5efce40.png',
        skillName: '狂暴之球',
        skillIcon: 'http://p8.qhimg.com/dr/52__/t010b6751bd13df50d7.png',
        weaponName: '头带',
        weaponIcon: 'http://p8.qhimg.com/dr/45__/t01a9f023161a3ddbaa.png',
        type: '祭司',
      },
      {
        id: 20,
        heroName: '名侦探夏洛克',
        heroIcon: 'http://p7.qhimg.com/dr/72__/t01bf6e13fd5679a810.png',
        skillName: '犯人就是你！',
        skillIcon: 'http://p0.qhimg.com/dr/52__/t0120bc202d018b77d3.png',
        weaponName: '神秘猎人',
        weaponIcon: 'http://p4.qhimg.com/dr/45__/t01ac8ad5e7da711b45.png',
        type: '猎人',
      },
      {
        id: 21,
        heroName: '耀眼新星尤娜',
        heroIcon: 'http://p3.qhimg.com/dr/72__/t01404359dc42b3f206.png',
        skillName: '粉碎吧！',
        skillIcon: 'http://p6.qhimg.com/dr/52__/t01d058ee06b623f032.png',
        weaponName: '尤娜之心',
        weaponIcon: 'http://p7.qhimg.com/dr/45__/t01efc4804f8346795e.png',
        type: '骑士',
      },
      {
        id: 22,
        heroName: '寒霜恶灵妮芬',
        heroIcon: 'http://p5.qhimg.com/dr/72__/t016913285d5f3191db.png',
        skillName: '冰霜射击',
        skillIcon: 'http://p2.qhimg.com/dr/52__/t014264b08dfbb2993f.png',
        weaponName: '寒霜魔弓',
        weaponIcon: 'http://p9.qhimg.com/dr/45__/t01d4270ff059286c5b.png',
        type: '弓手',
      },
      {
        id: 23,
        heroName: '火焰之迎春',
        heroIcon: 'http://p3.qhimg.com/dr/72__/t01d97a994fa49bec22.png',
        skillName: '庆典时间！',
        skillIcon: 'http://p3.qhimg.com/dr/52__/t0167c483c825273388.png',
        weaponName: '焰火天狱弓',
        weaponIcon: 'http://p7.qhimg.com/dr/45__/t0108831a663ce4ae91.png',
        type: '弓手',
      },
      {
        id: 24,
        heroName: '引领者伊西丝',
        heroIcon: 'http://p9.qhimg.com/dr/72__/t015ed878f6fe00d9fe.png',
        skillName: '沙之波纹',
        skillIcon: 'http://p7.qhimg.com/dr/52__/t01223f309535aad3b8.png',
        weaponName: '愤怒的祭礼',
        weaponIcon: 'http://p4.qhimg.com/dr/45__/t01a81b666a11951706.png',
        type: '剑士',
      },
    ]
  }
}