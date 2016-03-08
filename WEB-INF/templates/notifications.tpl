{$forms.notificationsForm.open}
<table cellspacing="0" cellpadding="7" border="0" width="720">
  <tr>
    <td valign="top">
      {if $user->canManageTeam()}
	  <table cellspacing="1" cellpadding="3" border="0" width="100%">
        <tr>
          <td class="tableHeader">{$i18n.label.thing_name}</td>
          <td class="tableHeader">{$i18n.label.cron_schedule}</td>
          <td class="tableHeader">{$i18n.label.email}</td>
          <td class="tableHeader">{$i18n.label.edit}</td>
          <td class="tableHeader">{$i18n.label.delete}</td>
        </tr>
        {if $notifications}
          {foreach $notifications as $notification}
        <tr bgcolor="{cycle values="#f5f5f5,#dedee5"}">
          <td>{$notification['name']|escape:'html'}</td>
          <td>{$notification['cron_spec']|escape:'html'}</td>
          <td>{$notification['email']|escape:'html'}</td>
          <td><a href="notification_edit.php?id={$notification['id']}">{$i18n.label.edit}</a></td>
          <td><a href="notification_delete.php?id={$notification['id']}">{$i18n.label.delete}</a></td>
        </tr>
          {/foreach}
        {/if}
      </table>
    
      <table width="100%">
        <tr><td align="center"><br>{$forms.notificationsForm.btn_add.control}</td></tr>
  	  </table>
      {/if}
    </td>
  </tr>
</table>
{$forms.notificationsForm.close}