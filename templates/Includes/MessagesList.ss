<h2><%t MessagesPage_ss.MESSAGES 'Messages'  %>: $CurrentMember.FullLabel</h2>
<div class="messages">
    <div id="messages_util" class="clearfix">
        <div id="new_message">
            <a href="#NewMessageDialog" data-toggle="modal" class="btn btn-primary"><i
                    class="icon-plus icon-white pull-left"></i>&nbsp;<%t Postale.NEWMESSAGE 'New Message' %></a>
        </div>
        <div id="messages_search">
            <%-- include MessagesSearch --%>
        </div>
    </div>
    <div id="messages_interface">
        <% include MessagesInterface %>
    </div>
</div>