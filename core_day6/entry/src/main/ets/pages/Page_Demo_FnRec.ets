interface Department {
  name: string;
  employees: number;
  subDepartments?: Department[];
}
// 示例组织结构
const organization: Department = {
  name: "总裁办",
  employees: 20,
  subDepartments: [
    {
      name: "人事部",
      employees: 20,
      subDepartments: [
        {
          name: "招聘组",
          employees: 10
        },
        {
          name: "培训组",
          employees: 8
        }
      ]
    },
    {
      name: "技术部",
      employees: 50,
      subDepartments: [
        {
          name: "前端组",
          employees: 20
        },
        {
          name: "后端组",
          employees: 25
        },
        {
          name: "测试组",
          employees: 5
        }
      ]
    },
    {
      name: "财务部",
      employees: 30
    }
  ]
};

// 方法1
// 计算部门及其子部门的总员工人数
function getTotalEmployees(department: Department): number {
  let totalEmloyees : number = 0
  totalEmloyees+=department.employees
  for(let item of department.subDepartments??[]){
    totalEmloyees+=item.employees
    for(let item1 of item.subDepartments??[]){
      totalEmloyees+=item1.employees
    }
  }
  return totalEmloyees
}
// 可见逐层循环代码非常臃肿
// 计算总员工人数
const totalEmployees = getTotalEmployees(organization);
console.log("总员工人数:", totalEmployees); // 输出: 总员工人数: 188

// 方法2
let totalEmployees1 = 0
function getTotalEmployees1(department: Department){
  totalEmployees1+=department.employees
  for (let item1 of department.subDepartments??[]) {
    getTotalEmployees1(item1)
  }
}
getTotalEmployees1(organization)
console.log("总员工人数:", totalEmployees1)

@Entry
@Component
struct Page04_recursionDemo {
  @State message: string = '递归求和案例';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}