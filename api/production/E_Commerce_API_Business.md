## 接口文档——商家



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
  	  "username": "seller1",
  	  "password": "123456",
  	  "role": "BUSINESS",
  	  "avator": "https://localhost:9090/files/seller1_avator.png",
  	  "phone": "15263987458",
  	  "email": "2969688707@qq.com"
  }
}
```



#### 3、修改商家信息

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



#### 4、获取全部类型信息

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
  	  "id": 1,
      "name": "电脑",
      "description": "该系列有最全的电脑产品",
      "img": "https://localhost:9090/files/computer_img.png"
  }
}
```



#### 5、新增商品

- **请求URL** —— [/goods/add](#)
- **请求方式**  —— **POST**
- **请求参数**

>| 请求参数  | 参数类型 | 参数说明         |
>| :-------- | :------- | :--------------- |
>| goodsData | Object   | 输入的新商品信息 |

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



#### 6、修改商品信息

- **请求URL** —— [/goods/update](#)
- **请求方式**  —— **PUT**
- **请求参数**

>| 请求参数  | 参数类型 | 参数说明         |
>| :-------- | :------- | :--------------- |
>| goodsData | Object   | 新修改的商品信息 |

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



#### 7、删除商品

- **请求URL** —— [/goods/delete](#)
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



#### 8、批量删除商品

- **请求URL** —— [/goods/delete/batch](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| ids      | Object   | 多个商品id |

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



#### 9、获取全部商品信息

- **请求URL** —— [/goods/selectPage](#)
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
      "name": "秋季棉裤",
      "img": "https://localhost:9090/files/autumn_cloth.png",
      "description": "本衣服是本季爆款",
      "price": 99,
      "unit": "件",
      "count": 20,
      "type_id": 5,
      "business_id": 5
  }
}
```



#### 10、获取首页公告

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
  	  "id": 1,
      "title": "双11市场整改",
      "content": "希望各商户严格遵守相关规定",
      "time": "2024-10-08",
      "user": "admin"
  }
}
```



#### 11、新增订单

- **请求URL** —— [/orders/add](#)
- **请求方式**  —— **POST**
- **请求参数**

>| 请求参数   | 参数类型 | 参数说明         |
>| :--------- | :------- | :--------------- |
>| ordersData | Object   | 输入的新订单信息 |

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



#### 12、修改订单信息

- **请求URL** —— [/orders/update](#)
- **请求方式**  —— **PUT**
- **请求参数**

>| 请求参数   | 参数类型 | 参数说明         |
>| :--------- | :------- | :--------------- |
>| ordersData | Object   | 新修改的订单信息 |

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



#### 13、删除订单

- **请求URL** —— [/orders/delete](#)
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



#### 13、批量删除订单

- **请求URL** —— [/orders/delete/batch](#)
- **请求方式**  —— **DELETE**
- **请求参数**

>| 请求参数 | 参数类型 | 参数说明   |
>| :------- | :------- | :--------- |
>| ids      | Object   | 多个订单id |

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



#### 14、获取全部订单信息

- **请求URL** —— [/orders/selectPage](#)
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
  	  "order_id": 2,
      "goods_id": 3,
      "business_id": 3,
      "num": 5,
      "user_id": 2,
      "price": 200,
      "address_id": 20,
      "status": "已支付"
  }
}
```

