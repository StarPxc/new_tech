# new_tech
NIIT的project作业，通过这个小项目对以往所学的基础进行查漏补缺

# 前端部分
### cookie
- 本地打开html文件是无法操作cookie的（坑了我一个多小时(Ｔ▽Ｔ)）
- 删除cookie可以把cookie的过期时间设置为-1
### 前后端交互
#### 跨域问题 
后端加一个跨域的配置类[CorsConfig.java](https://github.com/StarPxc/new_tech/blob/master/src/main/java/project/just/nettech/common/config/CorsConfig.java)
前端模版代码
```javascript
	$.ajax({
					type: 'post',
					url: 'http://localhost:8888/user-profile/login',
					data: {
						username: $("#username").val(),
						password: $("#password").val(),
					},
					success: function(res) {
						
					},
					error: function() {
						
					}
				});
```  
#### 参数匹配问题
- @RequestParam对应的是 data:data 
- @RequestBody对应的是data:JSON.stringify(data)
- 前端传数组给后台
后台书写方式：
```java
 @PostMapping("/getBookByIds")
    public ApiResult getBookByIds(@RequestParam( value = "ids[]",required = false) Integer[] ids){
        return ResultUtil.success("查询成功",bookDetailsService.getBookByIds(ids));
    }
```
前端书写方式
```javascript
		$.ajax({
						type: 'post',
						url: 'http://localhost:8888/book-details/getBookByIds',
						data: {
							ids: ids
						},
						success: function(res) {
						
						},
						error: function() {
							
						}
					});
```
**注意后台的写法@RequestParam( value = "ids[]",required = false)** value一定是要加"[]"的

### 后台部分
#### mybatis接受数组参数的写法
 ```xml
<select id="selectBookByIds" resultMap="BaseResultMap"  parameterType="Integer[]">
    select
    <include refid="Base_Column_List" />
    from book_details
    where id in
    <foreach collection="array" item="id" open="(" separator="," close=")">
      #{id}
    </foreach>
  </select>
```
**注意parameterType的值和<foreach>标签中collection的值是array**
