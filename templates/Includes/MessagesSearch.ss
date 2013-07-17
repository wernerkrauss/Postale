<% with MessagesSearchForm %>
	<form $FormAttributes>
		<% loop Fields %>
			$Field
		<% end_loop %>
		<% loop Actions %>
			$Field
		<% end_loop %>
	</form>
<% end_with %>
