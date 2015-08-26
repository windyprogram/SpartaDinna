<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>dish列表</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
</head>
<body>
<div id="container" class="container_24">
  <!-- header -->
  <%@ include file="/WEB-INF/jsp/commons/header.jsp"%>
  
  <!-- content -->
  <div id="content" class="container_24">
    <div class="container_24">
      <div class="area2">
        <!-- 分页显示演示开始 -->
        <form id="listForm" action="${ctx}/dinna/dish/list" method="get">
          <input type="hidden" name="pageNo" id="pageNo" value="${pageData.pagination.pageNo}" />
          <input type="hidden" name="fieldName" id="fieldName" value="${pageData.compositor.fieldName}" />
          <input type="hidden" name="compositorType" id="compositorType" value="${pageData.compositor.compositorType}" />
          <table>
            <tr align="center">
              <th>id: <y:search fieldType="I" fieldList="id" matchType="EQ" />
                <input type="button" value="搜索" class="submit" onclick="search()"/>
                <a href="${ctx}/dinna/dish/new">添加新dish</a>
              </th>
            </tr>
          </table>
        </form>
      </div>
      <div class="area">   
          <table  class="listtable">
            <tr class="line">
				<th><a href="javascript:sort('dishId')">dishId</a></th>
			
				<th><a href="javascript:sort('dishTypeId')">dishTypeId</a></th>
			
				<th><a href="javascript:sort('dishName')">dishName</a></th>
			
				<th><a href="javascript:sort('dishSpeel')">dishSpeel</a></th>
			
				<th><a href="javascript:sort('dishCost')">dishCost</a></th>
			
				<th><a href="javascript:sort('dishUnit')">dishUnit</a></th>
			
				<th><a href="javascript:sort('dishPrice')">dishPrice</a></th>
			
				<th><a href="javascript:sort('dishDescription')">dishDescription</a></th>
			
				<th><a href="javascript:sort('dishCooking')">dishCooking</a></th>
			
				<th><a href="javascript:sort('dishImgUrl')">dishImgUrl</a></th>
			
				<th><a href="javascript:sort('delFlag')">delFlag</a></th>
			
				<th><a href="javascript:sort('lastSubTime')">lastSubTime</a></th>
			
				<th><a href="javascript:sort('subBy')">subBy</a></th>
			
				<th>插入时间</th>
              	<th>修改时间</th>
              	<th>操作</th>
            </tr>
            <c:forEach var="entity" items="${pageData.result}">
              <tr <c:if test="${!entity.visible}">bgcolor="#AFEEEE"</c:if>>
              	
					<td>${entity.dishId}</td>
				
					<td>${entity.dishTypeId}</td>
				
					<td>${entity.dishName}</td>
				
					<td>${entity.dishSpeel}</td>
				
					<td>${entity.dishCost}</td>
				
					<td>${entity.dishUnit}</td>
				
					<td>${entity.dishPrice}</td>
				
					<td>${entity.dishDescription}</td>
				
					<td>${entity.dishCooking}</td>
				
					<td>${entity.dishImgUrl}</td>
				
					<td>${entity.delFlag}</td>
				
					<td>${entity.lastSubTime}</td>
				
					<td>${entity.subBy}</td>
				
					<td>${entity.insertTime}</td>
                	<td>${entity.lastUpdateTime}</td>
                <td>
                	<a href="${ctx}/dinna/dish/edit/${entity.id}">修改</a> |
                	<a href="${ctx}/dinna/dish/delete/${entity.id}" onClick="return confirm('删除后无法恢复,确定要删除吗?');">刪除</a> |
                  <c:choose>
                    <c:when test="${entity.visible}"> 
                    	显示 |  <a href="${ctx}/dinna/dish/unVisible/${entity.id}">不显示</a>
                    </c:when>
                    <c:otherwise> 
                    	<a href="${ctx}/dinna/dish/visible/${entity.id}">显示</a> | 不显示 
                    </c:otherwise>
                  </c:choose>
                </td>
              </tr>
            </c:forEach>
          </table>
                           第${pageData.pagination.pageNo}页,共${pageData.pagination.totalPage}页 <a href="javascript:jumpPage(1)">首页</a>
          <c:if test="${pageData.pagination.hasPrevPage}"> <a href="javascript:jumpPage(${pageData.pagination.prevPage})">上一页</a> </c:if>
          <c:if test="${pageData.pagination.hasNextPage}"> <a href="javascript:jumpPage(${pageData.pagination.nextPage})">下一页</a> </c:if>
          <a href="javascript:jumpPage(${pageData.pagination.totalPage})">末页</a>
        
        <!-- 分页显示演示结束 -->
      </div>
    </div>
  </div>
  
  <!-- footer -->
  <%@ include file="/WEB-INF/jsp/commons/footer.jsp"%>
  
</div>
</body>
</html>
