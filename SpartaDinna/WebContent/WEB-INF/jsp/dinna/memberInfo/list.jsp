<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>memberInfo列表</title>
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
        <form id="listForm" action="${ctx}/dinna/memberInfo/list" method="get">
          <input type="hidden" name="pageNo" id="pageNo" value="${pageData.pagination.pageNo}" />
          <input type="hidden" name="fieldName" id="fieldName" value="${pageData.compositor.fieldName}" />
          <input type="hidden" name="compositorType" id="compositorType" value="${pageData.compositor.compositorType}" />
          <table>
            <tr align="center">
              <th>id: <y:search fieldType="I" fieldList="id" matchType="EQ" />
                <input type="button" value="搜索" class="submit" onclick="search()"/>
                <a href="${ctx}/dinna/memberInfo/new">添加新memberInfo</a>
              </th>
            </tr>
          </table>
        </form>
      </div>
      <div class="area">   
          <table  class="listtable">
            <tr class="line">
				<th><a href="javascript:sort('memId')">memId</a></th>
			
				<th><a href="javascript:sort('memTypeId')">memTypeId</a></th>
			
				<th><a href="javascript:sort('memName')">memName</a></th>
			
				<th><a href="javascript:sort('memUserName')">memUserName</a></th>
			
				<th><a href="javascript:sort('memPassword')">memPassword</a></th>
			
				<th><a href="javascript:sort('memTel')">memTel</a></th>
			
				<th><a href="javascript:sort('memPhone')">memPhone</a></th>
			
				<th><a href="javascript:sort('memAddress')">memAddress</a></th>
			
				<th><a href="javascript:sort('memGender')">memGender</a></th>
			
				<th><a href="javascript:sort('memMoney')">memMoney</a></th>
			
				<th><a href="javascript:sort('memIntegral')">memIntegral</a></th>
			
				<th><a href="javascript:sort('memBirthday')">memBirthday</a></th>
			
				<th><a href="javascript:sort('memBeginTime')">memBeginTime</a></th>
			
				<th><a href="javascript:sort('memEndTime')">memEndTime</a></th>
			
				<th><a href="javascript:sort('delFlag')">delFlag</a></th>
			
				<th><a href="javascript:sort('lastSubTime')">lastSubTime</a></th>
			
				<th><a href="javascript:sort('subBy')">subBy</a></th>
			
				<th>插入时间</th>
              	<th>修改时间</th>
              	<th>操作</th>
            </tr>
            <c:forEach var="entity" items="${pageData.result}">
              <tr <c:if test="${!entity.visible}">bgcolor="#AFEEEE"</c:if>>
              	
					<td>${entity.memId}</td>
				
					<td>${entity.memTypeId}</td>
				
					<td>${entity.memName}</td>
				
					<td>${entity.memUserName}</td>
				
					<td>${entity.memPassword}</td>
				
					<td>${entity.memTel}</td>
				
					<td>${entity.memPhone}</td>
				
					<td>${entity.memAddress}</td>
				
					<td>${entity.memGender}</td>
				
					<td>${entity.memMoney}</td>
				
					<td>${entity.memIntegral}</td>
				
					<td>${entity.memBirthday}</td>
				
					<td>${entity.memBeginTime}</td>
				
					<td>${entity.memEndTime}</td>
				
					<td>${entity.delFlag}</td>
				
					<td>${entity.lastSubTime}</td>
				
					<td>${entity.subBy}</td>
				
					<td>${entity.insertTime}</td>
                	<td>${entity.lastUpdateTime}</td>
                <td>
                	<a href="${ctx}/dinna/memberInfo/edit/${entity.id}">修改</a> |
                	<a href="${ctx}/dinna/memberInfo/delete/${entity.id}" onClick="return confirm('删除后无法恢复,确定要删除吗?');">刪除</a> |
                  <c:choose>
                    <c:when test="${entity.visible}"> 
                    	显示 |  <a href="${ctx}/dinna/memberInfo/unVisible/${entity.id}">不显示</a>
                    </c:when>
                    <c:otherwise> 
                    	<a href="${ctx}/dinna/memberInfo/visible/${entity.id}">显示</a> | 不显示 
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
