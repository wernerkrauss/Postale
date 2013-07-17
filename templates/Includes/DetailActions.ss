<div class="message_actions">
	<a class="btn" href="$BackToMessagesLink">&laquo; <%t Postale.BACKTOMESSAGES 'Back to messages' %></a>
	<% if $Thread %>
		<% with $Thread %>
			<a class="btn" href="$MarkDeletedLink"><%t Postale.DELETE 'Delete' %></a>
			<% if $IsRead %>
				<a class="btn" href="$MarkUnreadLink"><%t Postale.MARKASUNREAD 'Mark as unread' %></a>
			<% else %>
				<a class="btn" href="$MarkReadLink"><%t Postale.MARKASREAD 'Mark read' %></a>
			<% end_if %>
			<div class="next_prev">
				<% if $PrevLink %>
					<a class="btn" href="$PrevLink" title="<%t Postale.PREV 'Previous' %>">&laquo;</a>
				<% else %>
					<a class="btn disabled" href="javascript:void(0)" title="<%t Postale.PREV 'Previous' %>">&laquo;</a>
				<% end_if %>
				<% if $NextLink %>
					<a class="btn" href="$NextLink" title="<%t Postale.NEXT 'Next' %>">&raquo;</a>
				<% else %>
					<a class="btn disabled" href="javascript:void(0)" title="<%t Postale.NEXT 'Next' %>">&raquo;</a>
				<% end_if %>
			</div>
		<% end_with %>
	<% end_if %>
</div>
