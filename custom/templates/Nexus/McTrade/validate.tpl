{include file='header.tpl'}
{include file='navbar.tpl'}

<br />
<div class="ui stackable grid">
	<div class="ui centered row">


		{if !empty($WIDGETS_LEFT)}
			<div class="ui five wide tablet four wide computer column">
				{foreach from=$WIDGETS_LEFT item=widget}
					{$widget}
				{/foreach}
			</div>
		{/if}
		<div
			class="ui {if !empty($WIDGETS_LEFT) && !empty($WIDGETS_RIGHT) }four wide tablet eight wide computer{elseif !empty($WIDGETS_LEFT) || !empty($WIDGETS_RIGHT)}ten wide tablet twelve wide computer{else}sixteen wide{/if} column">


			{if isset($SUCCESS)}
				<div class="ui success icon message">
					<i class="check icon"></i>
					<div class="content">
						{$SUCCESS}
					</div>
				</div>
			{/if}

			{if isset($ERRORS)}
				<div class="ui negative icon message">
					<i class="x icon"></i>
					<div class="content">
						{foreach from=$ERRORS item=error}
							{$error}<br />
						{/foreach}
					</div>
				</div>
			{/if}


			{if $VALIDATION != true}
				<p class="ui yellow center aligned header">{$VALIDATION_INFO} {$VALIDATION_CODE}</p>
				<p class="ui yellow center aligned header">{$IS_VALIDATION}</p>
			{else}
				<p class="ui green center aligned header">{$VERIFITED}</p>
			{/if}


		</div>
		{if !empty($WIDGETS_RIGHT)}
			<div class="ui five wide tablet four wide computer column">
				{foreach from=$WIDGETS_RIGHT item=widget}
					{$widget}
				{/foreach}
			</div>
		{/if}
	</div>
</div>


{include file='footer.tpl'}