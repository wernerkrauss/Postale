<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<% base_tag %>
</head>
<body>

<p class="body">
	<% with Member %>
		<%t Postale.SALUTATION 'Hello, {name}!' name=$ShortLabel %>
	<% end_with %>
</p>
<% with Message %>
	<p><%t Postale.USERSENTYOUMESSAGE '{name} sent you a message.' name=$Author.Nickname %></p>
	<p><strong><%t Postale.SUBJECT 'Subject' %></strong>: $Thread.Subject</p>
	<p><strong><%t Postale.MESSAGE 'Message' %></strong>: $Body</p>
	<p><%t Postale.TOREPLY 'To reply to this message, follow the link below:' %></p>
	<p><a href="$Link">{$BaseHref}/$Link</a></p>
<% end_with %>
<% if FromName %>
	<p><%t Postale.CLOSING 'Sincerely,' %><br />
	$FromName</p>
<% end_if %>

</body>
</html>						
