<% include DetailActions %>
<% if $Thread %>
	<% with $Thread %>
		<div><strong><%t Postale.SUBJECT 'Subject' %></strong>: $Subject</div>
		<div><strong><%t Postale.BETWEEN 'Between' %></strong>: $YouAndOthers</div>
		<% loop $Messages %>
			<div class="message_wrap clearfix" id="message{$ID}">
				<div class="message_side">
					 <% with $Author %>
					 	<% if Author.Link %>
					 		<a href="$Author.Link">$AvatarOrDefault</a>
					 	<% else %>
					 		$AvatarOrDefault
					 	<% end_if %>
					 <% end_with %>
				 </div>
				 <div class="message_main">
			 	 	<h4>
			 	 		<% if Author.Link %>
				 	 		<a href="$Author.Link">$Author.ShortLabel</a>
				 	 	<% else %>
				 	 		$Author.ShortLabel
				 	 	<% end_if %> 
				 	 	<span>$Created.Nice</span>
				 	</h4>
					<div>$Body</div>
				 </div>
			 </div>
		<% end_loop %>
	<% end_with %>
	$ReplyForm
	<% include DetailActions %>	
<% else %>
	<%t Postale.THREADNOTFOUND 'That thread could not be found.' %>
<% end_if %>
