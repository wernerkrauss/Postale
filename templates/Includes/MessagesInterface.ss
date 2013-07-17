		<% with MessageForm %>
			<form $FormAttributes >
				<% if $Message %><p id="{$FormName}_error" class="message">$Message</p><% end_if %>
			<div class="message_actions">
				<% loop Actions %>
					$Field
				<% end_loop %>
		<% end_with %>
				<div class="next_prev">
					<% if $Messages.NotFirstPage %>
						<a class="btn" href="$Messages.PrevLink" title="<%t Postale.VIEWPREV 'View the previous page ' %>">&laquo;</a>
					<% else %>
						<a class="btn disabled" href="javascript:void(0);" title="<%t Postale.VIEWPREV 'View the previous page ' %>">&laquo;</a>								
					<% end_if %>
					<% if $Messages.NotLastPage %>
						<a class="btn" href="$Messages.NextLink" title="<%t Postale.VIEWNEXT 'View the next page ' %>">&raquo;</a>
					<% else %>
						<a class="btn disabled" href="javascript:void(0);" title="<%t Postale.VIEWNEXT 'View the next page ' %>">&raquo;</a>								
					<% end_if %>
				</div>		
			</div>
		<div id="controls_wrap" class="clearfix">
			<div id="select_control"><%t Postale.SELECT 'Select ' %>: <a rel="select_all" href="javascript:void(0)"><%t Postale.ALL 'All ' %></a> | <a rel="select_read" href="javascript:void(0)"><%t Postale.READ 'Read ' %></a> | <a rel="select_unread" href="javascript:void(0)"><%t Postale.UNREAD 'Unread ' %></a> | <a rel="select_none" href="javascript:void(0)"><%t Postale.NONE 'None ' %></a></div>
			<div id="show_control"><%t Postale.SHOW 'Show ' %>: <a class="$AllLink" href="$AllMessagesLink"><%t Postale.ALL 'All ' %></a> | <a class="$UnreadLink" href="$UnreadMessagesLink"><%t Postale.UNREAD 'Unread ' %></a></div>
		</div>
		<% if $Messages %>
		<table id="messages_table" cellpadding="0" cellspacing="0" border="0" width="100%">
			<% loop $Messages %>
				<tr class="<% if IsRead %>read<% else %>unread<% end_if %>">
					<td class="checkbox"><input type="checkbox" value="$ID" name="marked[]" /></td>
					<td class="avatar">
						<% with LatestMessage %>
							<% with Author %>$AvatarOrDefault
					</td>
					<td class="author">
						<% if $Author.Link %>
							<a href="$Link">$ShortLabel</a>
						<% else %>
							$ShortLabel
						<% end_if %>
						<br />
						<% end_with %>
						$Created.Nice
						<% end_with %>
					</td>
					<td class="subject">
						<a href="$Link#message{$LatestMessage.ID}">$Subject</a>
					</td>
					<td class="delete">
						<a href="$DeleteLink"><%t Postale.DELETE 'delete ' %></a>
					</td>
				</tr>
			<% end_loop %>
		</table>
		<% else %>
			<%t Postale.NOMESSAGES 'No messages found ' %>
		<% end_if %>
		</form>
