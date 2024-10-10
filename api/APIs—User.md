## 接口文档——用户



#### 1、**注册**

- **请求URL** ——  [/register](#)
- **请求方式 ** —— **POST**
- **请求参数**
>
>| 请求参数 | 参数类型 | 参数说明           |
>| :------- | :------- | :----------------- |
>| userData | Object   | 用户注册输入的信息 |

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
  "data":{
      null
  }
}
```



#### 2、登录

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
  	  "username": "user1",
  	  "password": "123",
  	  "role": "USER",
  	  "avator": "https://localhost:9090/files/user1_avator.png",
  	  "phone": "15263987458",
  	  "email": "2969688707@qq.com"
  }
}
```



#### 3、获取首页商品

- **请求URL** —— [/goods/selectTop15](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| null     | null     | null     |

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
  	  "id": 2,
      "name": "计算机组成原理",
      "img": "https://localhost:9090/files/book_img.png",
      "price": 90,
      "count": 50,
      "unit": "本"
  }
}
```



#### 4、获取首页公告

- **请求URL** —— [/notice/selectAll](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| null     | null     | null     |

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
  	  "id": 2,
      "title": "市场整改",
      "content": "临近双11，市场需要进行整改，希望各大商户遵守规则",
      "time": "2024-10-05",
      "user": "admin"
  }
}
```



#### 5、获取首页分类

- **请求URL** —— [/type/selectAll](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| null     | null     | null     |

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
  	  "id": 2,
      "name": "家电",
      "description": "批发家电，各种生活用品",
      "img": "https://localhost:9090/files/household.png"
  }
}
```



#### 6、新增地址

- **请求URL** —— [/address/add](#)

- **请求方式**  —— **POST**

- **请求参数**

>| 请求参数    | 参数类型 | 参数说明       |
>| :---------- | :------- | :------------- |
>| addressData | Object   | 新增的地址信息 |

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



#### 7、更新地址

- **请求URL** —— [/address/update](#)

- **请求方式**  —— **PUT**

- **请求参数**

>| 请求参数    | 参数类型 | 参数说明         |
>| :---------- | :------- | :--------------- |
>| addressData | Object   | 新修改的地址信息 |

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



#### 8、获取地址

- **请求URL** —— [/address/selectPage](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明       |
>| :------- | :------- | :------------- |
>| pageNum  | Integer  | 请求的分页数量 |
>| pageSize | Integer  | 请求的页面大小 |

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
  	  "id": 3,
      "user_id": 1,
      "username": "user1",
      "useraddress": "长春市朝阳区前进大街2699号",
      "phone": "12352563485"
  }
}
```



#### 9、删除地址

- **请求URL** —— [/address/delete](#)

- **请求方式**  —— **DELETE**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 地址id   |

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



#### 10、获取商家信息

- **请求URL** —— [/business/selectById](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数   | 参数类型 | 参数说明 |
>| :--------- | :------- | :------- |
>| businessId | Integer  | 商家id   |

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
  	  "id": 3,
      "username": "seller1",
      "password": "123456",
      "name": "JLU书店",
      "avator": "https://localhost:9090/files/JLU_Book_avator.png",
      "email": "15263987652@163.com",
      "description": "JLU书店专卖店",
      "status": "审核通过"
  }
}
```



#### 11、获取商家商品信息

- **请求URL** —— [/goods/selectByBusinessId](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数   | 参数类型 | 参数说明 |
>| :--------- | :------- | :------- |
>| businessId | Integer  | 商家id   |

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
  	  "id": 2,
      "name": "计算机组成原理",
      "img": "https://localhost:9090/files/book_img.png",
      "price": 90,
      "count": 50,
      "unit": "本"
  }
}
```



#### 12、获取购物车商品

- **请求URL** —— [/cart/selectPage](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明       |
>| :------- | :------- | :------------- |
>| pageNum  | Integer  | 请求的分页数量 |
>| pageSize | Integer  | 请求的页面大小 |

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
  	  "id": 2,
      "user_id:": 1,
      "goods_id": 15,
      "business_id": 2,
      "num": 5
  }
}
```



#### 13、删除购物车商品

- **请求URL** —— [/cart/delete](#)

- **请求方式**  —— **DELETE**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 商品id   |

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



#### 14、新增订单

- **请求URL** —— [/order/add](#)

- **请求方式**  —— **POST**

- **请求参数**

>| 请求参数  | 参数类型 | 参数说明   |
>| :-------- | :------- | :--------- |
>| userId    | Integer  | 用户id     |
>| addressId | Integer  | 地址id     |
>| status    | String   | 订单状态   |
>| cartData  | Object   | 购物车数据 |

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



#### 15、获取收藏商品

- **请求URL** —— [/collect/selectPage](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明       |
>| :------- | :------- | :------------- |
>| pageNum  | Integer  | 请求的分页数量 |
>| pageSize | Integer  | 请求的页面大小 |

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
  	  "id": 2,
      "user_id:": 1,
      "goods_id": 15,
      "business_id": 2,
  }
}
```



#### 16、删除收藏商品

- **请求URL** —— [/collect/delete](#)

- **请求方式**  —— **DELETE**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 商品id   |

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



#### 17、获取商品详情

- **请求URL** —— [/goods/selectById](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 商品id   |

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
  	  "id": 2,
      "name": "计算机组成原理",
      "img": "https://localhost:9090/files/book_img.png",
      "price": 90,
      "count": 50,
      "unit": "本"
  }
}
```



#### 18、新增收藏商品

- **请求URL** —— [/collect/add](#)

- **请求方式**  —— **POST**

- **请求参数**

>| 请求参数   | 参数类型 | 参数说明 |
>| :--------- | :------- | :------- |
>| userId     | Integer  | 用户id   |
>| businessId | Integer  | 商家id   |
>| goodsId    | Integer  | 商品id   |

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



#### 19、新增购物车商品

- **请求URL** —— [/cart/add](#)

- **请求方式**  —— **POST**

- **请求参数**

>| 请求参数   | 参数类型 | 参数说明 |
>| :--------- | :------- | :------- |
>| userId     | Integer  | 用户id   |
>| businessId | Integer  | 商家id   |
>| goodsId    | Integer  | 商品id   |
>| num        | Integer  | 商品数量 |

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



#### 20、获取商品评论

- **请求URL** —— [/comment/selectByGoodsId](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 商品id   |

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
  	  "id": 2,
      "user_id": 1,
      "goods_id": 12,
      "business_id": 6,
      "content": "该商品很好，值得下单",
      "time": "2024-10-09"
  }
}
```



#### 21、获取订单信息

- **请求URL** —— [/order/selectPage](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明       |
>| :------- | :------- | :------------- |
>| pageNum  | Integer  | 请求的分页数量 |
>| pageSize | Integer  | 请求的页面大小 |

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
  	  "id": 2,
      "order_id": 6,
      "goods_id": 11,
      "business_id": 2,
      "num": 2,
      "user_id": 1,
      "price": 600,
      "address_id": 3,
      "status": "已支付"
  }
}
```



#### 21、删除订单

- **请求URL** —— [/order/delete](#)

- **请求方式**  —— **DELETE**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 订单id   |

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



#### 22、修改订单

- **请求URL** —— [/order/update](#)

- **请求方式**  —— **PUT**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| formData | Object   | 新订单信息 |
>| status   | String   | 新订单状态 |

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



#### 23、新增商品评论

- **请求URL** —— [/comment/add](#)

- **请求方式**  —— **POST**

- **请求参数**

>| 请求参数   | 参数类型 | 参数说明 |
>| :--------- | :------- | :------- |
>| userId     | Integer  | 用户id   |
>| businessId | Integer  | 商家id   |
>| goodsId    | Integer  | 商品id   |
>| content    | String   | 评论内容 |

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

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| userData | Object   | 新用户信息 |

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



#### 25、获取类似名字商品

- **请求URL** —— [/goods/selectByName](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数  | 参数类型 | 参数说明 |
>| :-------- | :------- | :------- |
>| goodsName | String   | 商品名称 |

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
  	  "id": 2,
      "name": "计算机组成原理",
      "img": "https://localhost:9090/files/book_img.png",
      "price": 90,
      "count": 50,
      "unit": "本"
  }
}
```



#### 26、获取特定类型信息

- **请求URL** —— [/type/selectById](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| typeId   | Integer  | 类型id   |

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
  	  "id": 2,
      "name": "计算机组成原理",
      "img": "https://localhost:9090/files/household.png",
      "description": "本系列是家电类，提供各种智能家居"
  }
}
```



#### 27、获取特定类型商品

- **请求URL** —— [/goods/selectByTypeId](#)

- **请求方式**  —— **GET**

- **请求参数**

>| 请求参数 | 参数类型 | 参数说明 |
>| :------- | :------- | :------- |
>| id       | Integer  | 类型id   |

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
  	  "id": 2,
      "name": "计算机组成原理",
      "img": "https://localhost:9090/files/book_img.png",
      "price": 90,
      "count": 50,
      "unit": "本"
  }
}
```

