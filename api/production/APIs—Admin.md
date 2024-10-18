## 接口文档——管理员



#### 1、登录

- **请求URL** —— [/login](#)
- **请求方式**  —— **GET**
- **请求参数**
>
>| 请求参数 | 参数类型    | 参数说明 |
>| :------- | :---------- | :------- |
>| username | varchar(20) | 用户名   |
>| password | varchar(20) | 用户密码 |

- **返回参数**
>
>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**
```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  "username": "admin",
  	  "password": "admin",
  	  "role": "ADMIN",
  	  "avator": "https://localhost:9090/files/admin1_avator.png",
  	  "phone": "15263987458",
  	  "email": "2969688707@qq.com"
  }
}
```



#### 2、新增管理员

- **请求URL** —— [/admin/add](#)
- **请求方式**  —— **POST**
- **请求参数**

>| 请求参数  | 参数类型 | 参数说明           |
>| :-------- | :------- | :----------------- |
>| adminData | Object   | 输入的新管理员信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 3、修改管理员信息

- **请求URL** —— [/admin/update](#)
- **请求方式**  —— **PUT**
- **请求参数**

>| 请求参数  | 参数类型 | 参数说明           |
>| :-------- | :------- | :----------------- |
>| adminData | Object   | 新修改的管理员信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 4、删除管理员

- **请求URL** —— [/admin/delete](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 管理员id |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 5、批量删除管理员

- **请求URL** —— [/admin/delete/batch](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| ids      | Object   | 多个管理员id |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 6、获取全部管理员信息

- **请求URL** —— [/admin/selectPage](#)
- **请求方式**  —— **GET**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| pageNum  | Integer  | 页面数量 |
>| pageSize | Integer  | 页面大小 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  "username": "admin",
  	  "password": "admin",
  	  "role": "ADMIN",
  	  "avator": "https://localhost:9090/files/admin1_avator.png",
  	  "phone": "15263987458",
  	  "email": "2969688707@qq.com"
  }
}
```



#### 7、新增商家

- **请求URL** —— [/business/add](#)
- **请求方式**  —— **POST**
- **请求参数**

>| 请求参数     | 参数类型 | 参数说明         |
>| :----------- | :------- | :--------------- |
>| businessData | Object   | 输入的新商家信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 8、修改商家信息

- **请求URL** —— [/business/update](#)
- **请求方式**  —— **PUT**
- **请求参数**

>| 请求参数     | 参数类型 | 参数说明         |
>| :----------- | :------- | :--------------- |
>| businessData | Object   | 新修改的商家信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 9、删除商家

- **请求URL** —— [/business/delete](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 商家id   |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 10、批量删除商家

- **请求URL** —— [/business/delete/batch](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| ids      | Object   | 多个商家id |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 11、获取全部商家信息

- **请求URL** —— [/business/selectPage](#)
- **请求方式**  —— **GET**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| pageNum  | Integer  | 页面数量 |
>| pageSize | Integer  | 页面大小 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  "username": "seller1",
  	  "password": "123",
  	  "role": "BUSINESS",
  	  "avator": "https://localhost:9090/files/seller1_avator.png",
  	  "phone": "15263987458",
  	  "email": "2969688707@qq.com"
  }
}
```



#### 12、新增评论

- **请求URL** —— [/comment/add](#)
- **请求方式**  —— **POST**
- **请求参数**

>| 请求参数    | 参数类型 | 参数说明         |
>| :---------- | :------- | :--------------- |
>| commentData | Object   | 输入的新评论信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 13、修改评论信息

- **请求URL** —— [/comment/update](#)
- **请求方式**  —— **PUT**
- **请求参数**

>| 请求参数    | 参数类型 | 参数说明         |
>| :---------- | :------- | :--------------- |
>| commentData | Object   | 新修改的评论信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 14、删除评论

- **请求URL** —— [/comment/delete](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 评论id   |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 15、批量删除评论

- **请求URL** —— [/comment/delete/batch](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| ids      | Object   | 多个评论id |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 16、获取全部评论信息

- **请求URL** —— [/comment/selectPage](#)
- **请求方式**  —— **GET**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| pageNum  | Integer  | 页面数量 |
>| pageSize | Integer  | 页面大小 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  "id": 1,
      "user_id": 2,
      "goods_id": 5,
      "business_id": 6,
      "content": "这个商品很好，孩子很爱吃",
      "time": "2024-10-06"
  }
}
```



#### 17、新增公告

- **请求URL** —— [/notice/add](#)
- **请求方式**  —— **POST**
- **请求参数**

>| 请求参数   | 参数类型 | 参数说明         |
>| :--------- | :------- | :--------------- |
>| noticeData | Object   | 输入的新公告信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 18、修改公告信息

- **请求URL** —— [/notice/update](#)
- **请求方式**  —— **PUT**
- **请求参数**

>| 请求参数   | 参数类型 | 参数说明         |
>| :--------- | :------- | :--------------- |
>| noticeData | Object   | 新修改的公告信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 19、删除公告

- **请求URL** —— [/notice/delete](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 公告id   |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 20、批量删除公告

- **请求URL** —— [/notice/delete/batch](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| ids      | Object   | 多个公告id |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 21、获取全部公告信息

- **请求URL** —— [/notice/selectPage](#)
- **请求方式**  —— **GET**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| pageNum  | Integer  | 页面数量 |
>| pageSize | Integer  | 页面大小 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  "id": 1,
      "title": "双11市场整改",
      "content": "希望各商户严格遵守相关规定",
      "time": "2024-10-08",
      "user": "admin"
  }
}
```



#### 22、新增种类

- **请求URL** —— [/type/add](#)
- **请求方式**  —— **POST**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明         |
>| :------- | :------- | :--------------- |
>| typeData | Object   | 输入的新种类信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 23、修改种类信息

- **请求URL** —— [/type/update](#)
- **请求方式**  —— **PUT**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明         |
>| :------- | :------- | :--------------- |
>| typeData | Object   | 新修改的种类信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 24、删除种类

- **请求URL** —— [/type/delete](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 种类id   |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 25、批量删除种类

- **请求URL** —— [/type/delete/batch](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| ids      | Object   | 多个种类id |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 26、获取全部种类信息

- **请求URL** —— [/type/selectPage](#)
- **请求方式**  —— **GET**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| pageNum  | Integer  | 页面数量 |
>| pageSize | Integer  | 页面大小 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  "id": 1,
      "name": "手机",
      "description": "这是手机系列",
      "img": "https://localhost:9090/files/phone.png"
  }
}
```



#### 23、新增用户

- **请求URL** —— [/user/add](#)
- **请求方式**  —— **POST**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明         |
>| :------- | :------- | :--------------- |
>| userData | Object   | 输入的新用户信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 24、修改用户信息

- **请求URL** —— [/user/update](#)
- **请求方式**  —— **PUT**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明         |
>| :------- | :------- | :--------------- |
>| userData | Object   | 新修改的用户信息 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 25、删除用户

- **请求URL** —— [/user/delete](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 用户id   |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 25、批量删除用户

- **请求URL** —— [/user/delete/batch](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| ids      | Object   | 多个用户id |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  null
  }
}
```



#### 26、获取全部用户信息

- **请求URL** —— [/user/selectPage](#)
- **请求方式**  —— **GET**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| pageNum  | Integer  | 页面数量 |
>| pageSize | Integer  | 页面大小 |

- **返回参数**

>| 返回参数 | 参数类型 | 参数说明     |
>| :------- | :------- | :----------- |
>| code     | Integer  | 执行结果code |
>| message  | String   | 执行结果消息 |
>| data     | Object   | 执行结果集   |

- **返回示例**

```json
{
  "code": 200,
  "message": "成功",
  "data": {
  	  "username": "admin",
  	  "password": "admin",
  	  "role": "ADMIN",
  	  "avator": "https://localhost:9090/files/admin1_avator.png",
  	  "phone": "15263987458",
  	  "email": "2969688707@qq.com"
  }
}
```

