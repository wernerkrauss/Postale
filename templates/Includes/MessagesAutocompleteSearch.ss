<% if $Results %>
	<ul>
	<% loop Results %>
		<li>
			<h5><a href="$Link">$Subject</a></h5>
			<div>$Summary</div>
		</li>
	<% end_loop %>
	</ul>
<% end_if %>