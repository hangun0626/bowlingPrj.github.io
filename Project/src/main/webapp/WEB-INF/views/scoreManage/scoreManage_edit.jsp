<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 게시판 수정폼</title>
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/scoreManage.js"></script>
<link rel="stylesheet" type="text/css" 
href="/resources/css/scoreManage.css" />
</head>
<body>
 <div id="bWrite_wrap">
  <h2 class="bWrite_title">게시판 수정폼</h2>
  <form method="post" action="scoreManage_edit_ok"
  onsubmit="return bw_check();">
  <input type="hidden" name="scoreManage_no" 
  value="${b.scoreManage_no}" />
  <input type="hidden" name="page" 
  value="${page}" />
   <table id="bWrite_t">
    <tr>
     <th>이름</th>
     <td>
     <input name="scoreManage_name" id="scoreManage_name" size="14" 
     value="${b.scoreManage_name}" />
     </td>
    </tr>
    <tr>
     <th>제목</th>
     <td>
     <input name="scoreManage_title" id="scoreManage_title" size="35" 
     value="${b.scoreManage_title}" />
     </td>
    </tr>
    <tr>
     <th>비밀번호</th>
     <td>
     <input type="password" name="scoreManage_pwd" id="scoreManage_pwd"
     size="14" />
     </td>    
    </tr>
    <tr>
     <th>내용</th>
     <td>
     <textarea name="scoreManage_cont" id="scoreManage_cont" rows="9"
     cols="36">${b.scoreManage_cont}</textarea>
     </td>
    </tr>
   </table>
   <div id="bWrite_menu">
    <input type="submit" value="수정" />
    <input type="reset" value="취소" 
    onclick="$('#scoreManage_name').focus();" />
    <input type="button" value="목록"
    onclick="location='scoreManage_list?page=${page}';" />
   </div>
  </form>
 </div>
</body>
</html>







