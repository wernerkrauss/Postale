		<% with $MessageForm %>
			<form $FormAttributes >
				<% if $Message %><p id="{$FormName}_error" class="message">$Message</p><% end_if %>
			<div class="message_actions">
				<% loop $Actions %>
					$Field
				<% end_loop %>
		<% end_with %>

		<% with $Messages %>
			<% include Pagination %>
		<% end_with %>

			</div>
		<div id="controls_wrap" class="clearfix">
			<div id="select_control"><%t Postale.SELECT 'Select ' %>: <a rel="select_all" href="javascript:void(0)"><%t Postale.ALL 'All ' %></a> | <a rel="select_read" href="javascript:void(0)"><%t Postale.READ 'Read ' %></a> | <a rel="select_unread" href="javascript:void(0)"><%t Postale.UNREAD 'Unread ' %></a> | <a rel="select_none" href="javascript:void(0)"><%t Postale.NONE 'None ' %></a></div>
			<div id="show_control"><%t Postale.SHOW 'Show ' %>: <a class="$AllLink" href="$AllMessagesLink"><%t Postale.ALL 'All ' %></a> | <a class="$UnreadLink" href="$UnreadMessagesLink"><%t Postale.UNREAD 'Unread ' %></a></div>
		</div>
		<% if $Messages %>
		<table id="messages_table" class="table table-striped">
			<% loop $Messages %>
				<tr class="<% if $IsRead %>read<% else %>unread<% end_if %>">
					<td class="checkbox"><input type="checkbox" value="$ID" name="marked[]" /></td>
					<td class="avatar">
						<% with $LatestMessage %>
							<% with $Author %>$AvatarOrDefault
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
						<a href="$DeleteLink"><i class="icon-trash"></i> <span class="hide-text"> <%t Postale.DELETE 'delete ' %></span></a>
					</td>
				</tr>
			<% end_loop %>
		</table>
		<% else %>
			<%t Postale.NOMESSAGES 'No messages found ' %>
		<% end_if %>
		</form>
