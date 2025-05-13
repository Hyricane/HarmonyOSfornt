export const branchFilter: string = ' 全部分路   | 对抗路   | 中路  | 发育路   |    游走 | 打野 '

// 英雄数据
export interface Hero {
  banRate: number // ban 率
  showRate: number // 登场率
  winRate: number // 胜率
  tRank: string // 热度
  heroCareer: string // 英雄分类
  heroName: string // 名字
  heroIcon: ResourceStr // 头像
  heroId: number // id
}

// 数组
export const heroList: Hero[] = [
  {
    banRate: 0.403,
    winRate: 0.519,
    showRate: 0.284,
    tRank: 't0',
    heroCareer: '辅助',
    heroId: 505,
    heroIcon: $r('app.media.ic_avatar_505'),
    heroName: '瑶'
  },
  {
    banRate: 0.702,
    winRate: 0.477,
    showRate: 0.097,
    tRank: 't0',
    heroCareer: '辅助',
    heroId: 191,
    heroIcon: $r('app.media.ic_avatar_191'),
    heroName: '大乔'
  },
  {
    banRate: 0.567,
    winRate: 0.487,
    showRate: 0.076,
    tRank: 't0',
    heroCareer: '辅助/坦克',
    heroId: 187,
    heroIcon: $r('app.media.ic_avatar_187'),
    heroName: '东皇太一'
  },
  {
    banRate: 0.452,
    winRate: 0.512,
    showRate: 0.12,
    tRank: 't0',
    heroCareer: '辅助/坦克',
    heroId: 113,
    heroIcon: $r('app.media.ic_avatar_113'),
    heroName: '庄周'
  },
  {
    banRate: 0.356,
    winRate: 0.503,
    showRate: 0.162,
    tRank: 't0',
    heroCareer: '辅助',
    heroId: 184,
    heroIcon: $r('app.media.ic_avatar_184'),
    heroName: '蔡文姬'
  },
  {
    banRate: 0.482,
    winRate: 0.475,
    showRate: 0.082,
    tRank: 't0',
    heroCareer: '辅助',
    heroId: 159,
    heroIcon: $r('app.media.ic_avatar_159'),
    heroName: '朵莉亚'
  },
  {
    banRate: 0.022,
    winRate: 0.495,
    showRate: 0.297,
    tRank: 't0',
    heroCareer: '法师',
    heroId: 142,
    heroIcon: $r('app.media.ic_avatar_142'),
    heroName: '安琪拉'
  },
  {
    banRate: 0.396,
    winRate: 0.496,
    showRate: 0.098,
    tRank: 't0',
    heroCareer: '法师',
    heroId: 563,
    heroIcon: $r('app.media.ic_avatar_563'),
    heroName: '海诺'
  },
]