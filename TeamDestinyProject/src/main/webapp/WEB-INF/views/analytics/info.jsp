<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

<!-- Fonts -->
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.nti100 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 100;
}
.nti300 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 300;
}
<!-- 레귤러 폰트 -->
.nti400 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 400;
}
.nti500 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 500;
}
.nti700 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 700;
}
.nti900 {
   font-family: 'Noto Sans KR', sans-serif;
   color: #1e1e1e;
   font-weight: 900;
}

html, body{
position:static;
margin:0;
padding:0;
height:100%;
}

footer{
    position:relative;
    top: 120px;
    bottom:0;
    width:100%;
}

.blank{
margin-top:5px;
margin-bottom:5px;
}

.blank1{
margin-top:10px;
margin-bottom:10px;
}

th {
padding: 5px !important;
}



</style>
<!-- Bootstrap Core CSS -->
<link href="../../css/bootstrap.css" rel="stylesheet">
<link href="../../css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery -->
<script src="../../js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>

<script type="text/javascript"
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
<script type="text/javascript">

   $(document).ready(function() {      
      
      //체크박스 전체 선택/해제
      $("#checkAll").click(function(){
           //클릭되었으면
           if($("#checkAll").prop("checked")){
               //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
               $("input[name=chkColnames]").prop("checked",true);
               //클릭이 안되있으면
           }else{
               //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
               $("input[name=chkColnames]").prop("checked",false);
           }
       })
      
        
        //업로드한 csv파일에서 데려온 데이터테이블의 체크된 데이터를 새 테이블로 만드는 기능.
       $(document).on('click', '#confirm', function() {
            var index = [];
            
            $("#selectCol").show();
            
            $('#col_table').html('');
            //값을 가져올 테이블에서 체크박스에 체크된 값을 배열에 담는다.
            $('#sum_table thead tr input[type=checkbox]:checked').each(function() {
              index.push($(this).closest('th').index());
              //console.log($(this).closest('th').text());
              //console.log($(this).closest('th').index());
            });
            //체크된 <th>의 내용을 <thead>를 생성하여 담는다.
            var thead = $('<thead>');
            $('#sum_table thead tr th').each(function() {
              if (jQuery.inArray($(this).index(), index) != -1) {
                thead.append($('<th>' + $(this).text() + '</th>'));
                //console.log($(this).text());
              }
            });

            //2중 반복으로 td들을 불러 tr에 담은 뒤 tbody에 담는다.
            var tbody = $('<tbody>');
            $('#sum_table tbody tr').each(function() {
              var tr = $('<tr>');
              $(this).find('td').each(function() {
                if (jQuery.inArray($(this).index(), index) != -1) {
                  tr.append($('<td>' + $(this).text() + '</td>'));
                  //console.log($(this).text());
                }
              });
              tbody.append(tr);
            });
            $('#col_table').append(thead);
            $('#col_table').append(tbody);
          });
       
                    
      //초기화버튼 클릭이벤트
      $("#reset").click(function() {
         $("#col_table > *").remove();
         $("#selectCol").hide()
      });
      
      //테이블 행 숨기는 기능
      $("#sum_table > tbody > tr:nth-child(n+6)").hide();
      
      //테이블 전체보기 클릭이벤트.
      $("#show_all").click(function() {
          $("#sum_table > tbody > tr").show();
          
          $("#show_sum").show();
          $("#show_all").hide();
          
       });
      
      //테이블 요약보기 클릭이벤트.
      $("#show_sum").click(function() {
         $("#sum_table > tbody > tr:nth-child(n+6)").hide();
         
         $("#show_all").show();
         $("#show_sum").hide();
      });
      
      //테이블 전체보기 클릭이벤트2.
      $("#show_all2").click(function() {
          $("#col_table > tbody > tr").show();
          
          $("#show_sum2").show();
          $("#show_all2").hide();
      });
      
      //테이블 요약보기 클릭이벤트2.
      $("#show_sum2").click(function() {
         $("#col_table > tbody > tr:nth-child(n+6)").hide();
         
         $("#show_all2").show();
         $("#show_sum2").hide();
      });
      
    
      
      $('#export').click(function() {
    	  /*
			 var blob;
			 var filenamam;
			var titles = [];
			  var data = [];
			  var index =[];
			$('#sum_table thead tr input[type=checkbox]:checked').each(function() {
				     index.push($(this).closest('th').index());

		        });

			  var thead = $('<thead>');
			   $('#sum_table thead tr th').each(function() {
			     if (jQuery.inArray($(this).index(), index) != -1) {
			      // thead.append($('<th>' + $(this).text() + '</th>'));
			       //console.log($(this).text());	     
			      thead.append($('<th>' + $(this).text()+ '</th>'));
			      titles.push($(this).text());
			     }	     
			   });

			  /*
			   * Get the actual data, this will contain all the data, in 1 array
			   
			  var tbody = $('<tbody>');
			   $('#sum_table tbody tr').each(function() {
			     var tr = $('<tr>');
			     $(this).find('td').each(function() {
			       if (jQuery.inArray($(this).index(), index) != -1) {
			         tr.append($('<td>' + $(this).text() + '</td>'));
			         //console.log($(this).text());
			         data.push($(this).text());
			       }
			     });
			     tbody.append(tr);	    
			   });
			   var CSVString = prepCSVRow(titles, titles.length, '');
				CSVString = prepCSVRow(data, titles.length, CSVString);
				blob = new Blob(["\ufeff", CSVString]);
				 alert(JSON.stringify(["\ufeff", CSVString]));

				filenamam =  $("#outputFile").val();
			 console.log(filenamam);
				var outputFile2 = {
					 fileName : filenamam,	 
				  //체크된 열의 이름을 담는다.
				 	blob : CSVString,
				 	dmd : '야 정신차리라고'
				 };	 
				*/
				 location.href = 'http://localhost:8080/destiny/analytics/handling';
				
				
		});
      
   });  
   
 //------------------------------------------------------




	function prepCSVRow(arr, columnCount, initial) {
		  var row = ""; // this will hold data
		  var delimeter = ","; // data slice separator, in excel it's `;`, in usual CSv it's `,`
		  var newLine = "\r\n"; // newline separator for CSV row

		  /*
		   * Convert [1,2,3,4] into [[1,2], [3,4]] while count is 2
		   * @param _arr {Array} - the actual array to split
		   * @param _count {Number} - the amount to split
		   * return {Array} - splitted array
		   */
		  function splitArray(_arr, _count) {
		    var splitted = [];
		    var result = [];
		    _arr.forEach(function(item, idx) {
		      if ((idx + 1) % _count === 0) {
		        splitted.push(item);
		        result.push(splitted);
		        splitted = [];
		      } else {
		        splitted.push(item);
		      }
		    });
		    return result;
		  }
		  var plainArr = splitArray(arr, columnCount);
		  // don't know how to explain this
		  // you just have to like follow the code
		  // and you understand, it's pretty simple
		  // it converts `['a', 'b', 'c']` to `a,b,c` string
		  plainArr.forEach(function(arrItem) {
		    arrItem.forEach(function(item, idx) {
		      row += item + ((idx + 1) === arrItem.length ? '' : delimeter);
		    });
		    row += newLine;
		  });
		  return initial + row;
		}
   
         
</script>

<title>Destiny</title>

</head>
<body>

<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/include/sidebar.jsp"></jsp:include>

<div class="container" style="font-family:'Noto Sans KR', sans-serif; font-weight:400; color: #1e1e1e;">	

	<div style="border-bottom: 1px solid #1e1e1e; width:80%">
   <h3>정보</h3>
</div>
<div class="blank">&nbsp;</div>
   <c:forEach var="j" begin="0" end="${rData.size()-1}">
		
		<div class="blank">&nbsp;</div>			
      <div style="border: 1px solid #1e1e1e; border-radius: 3px; width:80%; ">
         <h4>파일명 : [${fileName.get(j)}]</h4>
      </div>
      
      <div class="blank">&nbsp;</div>
      
      <div id="show_col_sum">
         <p>
            <label class="chkColnames nti400" for="checkAll">전체 선택&nbsp;&nbsp;</label><input
               type="checkbox" class="chkColnames" id="checkAll" />
         </p>
         <input type="button" id="show_all" value="테이블 전체보기"> 
         <input
            type="button" id="show_sum" value="테이블 요약보기(5행)"
            style="display: none">
            <div style="overflow-x: auto;">
            
            <div class="blank">&nbsp;</div>
            
         <table id="sum_table" border="1">
            <thead>
               <tr>
                  <c:forEach var="colName" items="${rData.get(j).colNames}">
                        <th style="text-align: center;"><input class="chkCol" name="chkColnames"
                           type="checkbox" value="${colName}"> <label class="chkCol"
                           for="chkColnames">${colName}</label></th>
                  </c:forEach>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="i" begin="0"
                  end="${fn:length(rData.get(j).data[0])-1}">
                  <c:if test="${i le 300}">
                     <c:set var="row" value="${rData.get(j).data}" />
                     <tr>
                        <c:forEach var="data" items="${row}">
                           <td>${data[i]}</td>
                        </c:forEach>
                     </tr>
                  </c:if>
               </c:forEach>
            </tbody>
         </table>
         </div>
      </div>
   </c:forEach>

   <br>

   <input class="btn" type="button" id="confirm" value="확인" />
   <input class="btn" type="reset" id="reset" value="초기화" />
   <a href="/destiny/upload/list"><input class="btn" type="button"
      value="취소" /></a>
      
 <div class="blank">&nbsp;</div>	
 
<form action="/analytics/handling" method="post">	
   <div id="selectCol" style="display: none">
      
      <div style="border-bottom: 1px solid #1e1e1e; width:80%">
      <h3>선택한 열 정보</h3>
      </div>
      <div class="blank">&nbsp;</div>
      <h5>
         데이터 명 : <input type="text" name="dataName" id="outputFile">
      </h5>
      <div class="blank">&nbsp;</div>
      
      
      <div id="dvData">

         <input type="button" id="show_sum2" value="테이블 요약보기(5행)"> <input
            type="button" id="show_all2" value="테이블 전체보기" style="display: none">
            <div class="blank">&nbsp;</div>
            <div style="overflow-x: auto;">
         <table id="col_table" class="col_table" border=1>
            <thead>
               <tr></tr>
            </thead>
            <tbody>
               <tr></tr>
            </tbody>
         </table>
         </div>
         <div class="blank">&nbsp;</div>
         
			<input value="다음" id="export" type="button" /> 
			<a href="/destiny/upload/list"> <input
				type="reset" value="취소" /></a>
		 
		</div>
	</div>
</form>				
			 </div> <!-- container -->
			 
</body>
<footer><jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include></footer>
</html>