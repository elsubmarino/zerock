<%@include file="../include/header.jsp"%>
<form role="form" method="POST" action="modifyPage">
<input type="hidden" name="page" value="${cri.page }">
<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">BNO</label><input type="text"
				name="bno" class="form-control" value="${boardVO.bno }"
				readonly="readonly">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Title</label><input type="text"
				name="title" class="form-control" value="${boardVO.title }">
		</div>

		<div class="form-group">
			<label for="exampleInputPassword1">Content</label>
			<textarea cols="form-control" name="content" rows="3">${boardVO.content }</textarea>
		</div>

		<div class="form-group">
			<label for="exampaleInputEmail1">Writer</label><input type="text"
				name="writer" class="form-control" value="${boardVO.writer }">
		</div>
	</div>
</form>

<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</div>
<script>
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);

		$(".btn-warning").on("click", function() {
			self.location = "/sboard/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+"&searchType=${cri.searchType}&keyword=${cri.keyword}";
		});

		$(".btn-primary").on("click", function() {
			formObj.submit();
		});

	});
</script>

<%@include file="../include/footer.jsp"%>


