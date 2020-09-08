<a name="top"></a>
# Milk Tea Mooc v0.1.0

The API Document of MilkTea online learning website
> This Document is generated automatically by [ApiDoc](https://apidocjs.com/) and [ApiDoc-Markdown](https://github.com/rigwild/apidoc-markdown) tool.

 - [User](#User)
   - [Sign up a new user by Unique Phone Number](#Sign-up-a-new-user-by-Unique-Phone-Number)
   - [User Login Interface](#User-Login-Interface)
 - [Video](#Video)
   - [List all the Videos](#List-all-the-Videos)
   - [List the Carousel List](#List-the-Carousel-List)
   - [Query video details, including chapter and episode info](#Query-video-details,-including-chapter-and-episode-info)
 - [VideoOrder](#VideoOrder)
   - [List All Order Records of a specific User](#List-All-Order-Records-of-a-specific-User)
   - [Save the User&#39;s purchase record](#Save-the-User&#39;s-purchase-record)

___


# <a name='User'></a> User

## <a name='Sign-up-a-new-user-by-Unique-Phone-Number'></a> Sign up a new user by Unique Phone Number
[Back to top](#top)

```
POST api/v1/pri/user/register
```

### Parameters - `Parameter`

| Name     | Type       | Description                           |
|----------|------------|---------------------------------------|
| userInfo | `json` | <p>the User's Information</p> |

### Parameters examples
`json` - Request Example:

```json
{
"phone": "123456",
"name": "testMilkTea",
"pwd": "123456"
}
```

### Success response example

#### Success response example - `Success-Response:`

```json
{
"code": 0,
"data": null,
"msg": null
}
```

### Error response example

#### Error response example - `Error-Response:`

```json
{
"code": -1,
"data": null,
"msg": "The phone has already registered"
}
```

## <a name='User-Login-Interface'></a> User Login Interface
[Back to top](#top)

```
POST api/v1/pri/user/login
```

### Parameters - `Parameter`

| Name     | Type       | Description                           |
|----------|------------|---------------------------------------|
| userInfo | `json` | <p>Login Phone and Password.</p> |

### Parameters examples
`json` - Request Example:

```json
{
"phone": "123456",
"pwd": "123456"
}
```

### Success response example

#### Success response example - `Success-Response:`

```json
{
"code": 0,
"data": "Token String",
"msg": null
}
```

### Error response example

#### Error response example - `Error-Response:`

```json
{
"code": -1,
"data": null,
"msg": "Login Failed, Wrong User Information"
}
```

# <a name='Video'></a> Video

## <a name='List-all-the-Videos'></a> List all the Videos
[Back to top](#top)

```
GET /api/v1/pub/video/list
```

### Parameters - `Parameter`

| Name     | Type       | Description                           |
|----------|------------|---------------------------------------|
| null |  | <p>null</p> |

### Success response example

#### Success response example - `Success-Response:`

```json
{
"code": 0,
"data": [
{
"id": 30,
"title": "title",
"summary": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/jvm_detail.jpeg",
"coverImg": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/jvm.jpeg",
"price": 3980,
"createTime": "2019-06-24 14:14:00",
"point": 9.1,
"chapterList": null
},
{
"id": 31,
"title": "title",
"summary": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/shiro_detail.jpeg",
"coverImg": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/shiro.jpeg",
"price": 2980,
"createTime": "2019-06-24 14:14:00",
"point": 8.9,
"chapterList": null
}
],
"msg": null
}
```

## <a name='List-the-Carousel-List'></a> List the Carousel List
[Back to top](#top)

```
GET api/v1/pub/video/list_banner
```

### Parameters - `Parameter`

| Name     | Type       | Description                           |
|----------|------------|---------------------------------------|
| null |  | <p>null</p> |

### Success response example

#### Success response example - `Success-Response:`

```json
{
"code": 0,
"data": [
{
"id": 1,
"url": "https://m.xdclass.net/#/coursedetail?video_id=49",
"img": "https://file.xdclass.net/video/2020/%E9%9D%A2%E8%AF%95%E4%B8%93%E9%A2%98/%E9%9D%A2%E8%AF%95%E4%B8%93%E9%A2%98%E7%AC%AC%E4%B8%80%E5%AD%A3banner.png",
"createTime": null,
"weight": 1
},
{
"id": 2,
"url": "https://m.xdclass.net/#/member",
"img": "https://file.xdclass.net/video/%E5%AE%98%E7%BD%91%E8%BD%AE%E6%92%AD%E5%9B%BE/%E8%BD%AE%E6%92%AD%E5%9B%BE-VIP.png",
"createTime": null,
"weight": 2
}
],
"msg": null
}
```

## <a name='Query-video-details,-including-chapter-and-episode-info'></a> Query video details, including chapter and episode info
[Back to top](#top)

```
GET api/v1/pub/video/find_detail_by_id?video_id=id
```

### Parameters - `Parameter`

| Name     | Type       | Description                           |
|----------|------------|---------------------------------------|
| videoId | `Number` | <p>The specified Video ID (required, send as a parameter).</p> |

### Success response example

#### Success response example - `Success-Response:`

```json
{
"code": 0,
"data": {
"id": 44,
"title": "title",
"summary": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/jdk8/jdk8_detail.png",
"coverImg": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/jdk8/jdk8.png",
"price": 3980,
"createTime": "2019-10-10 14:14:00",
"point": 9.3,
"chapterList": [
{
"id": 510,
"videoId": null,
"title": "chapterTitle",
"ordered": 1,
"createTime": null,
"episodeList": [
{
"id": 12101,
"title": "chapterTitle",
"num": 1,
"ordered": 1,
"playUrl": "xdclass.net/aaa.mp4",
"chapterId": null,
"free": 0,
"videoId": null,
"createTime": null
},
{
"id": 12102,
"title": "chapterTitle",
"num": 2,
"ordered": 2,
"playUrl": "xdclass.net/aaa.mp4",
"chapterId": null,
"free": 0,
"videoId": null,
"createTime": null
}
]
}
]
},
"msg": null
}
```

# <a name='VideoOrder'></a> VideoOrder

## <a name='List-All-Order-Records-of-a-specific-User'></a> List All Order Records of a specific User
[Back to top](#top)

```
GET api/v1/pri/order/list
```

### Parameters - `Parameter`

| Name     | Type       | Description                           |
|----------|------------|---------------------------------------|
| token | `header` | <p>The Login Token.</p> |

### Success response example

#### Success response example - `Success-Response:`

```json
{
"code": 0,
"data": [
{
"id": 14,
"outTradeNo": "1765cc94-caf6-4eb3-9127-26310c32ae35",
"state": 1,
"createTime": "2020-09-07 22:08:19",
"totalFee": 5980,
"videoId": 42,
"videoTitle": "videoTitle",
"videoImg": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/element/elementui.png",
"userId": 11
}
],
"msg": null
}
```

## <a name='Save-the-User&#39;s-purchase-record'></a> Save the User&#39;s purchase record
[Back to top](#top)

```
POST api/v1/pri/order/save
```

### Parameters - `Parameter`

| Name     | Type       | Description                           |
|----------|------------|---------------------------------------|
| token | `header` | <p>The Login Token.</p> |
| videoOrderRequest | `json` | <p>The Video Order Info.</p> |

### Parameters examples
`json` - Request Example:

```json
{
"video_id" : 34
}
```

### Success response example

#### Success response example - `Success-Response:`

```json
{
"code": 0,
"data": null,
"msg": null
}
```

### Error response example

#### Error response example - `Error-Response:`

```json
{
"code": -1,
"data": null,
"msg": "Oops! Purchase Failed"
}
```
