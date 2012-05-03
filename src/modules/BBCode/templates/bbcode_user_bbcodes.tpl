<div id="bbcode_{$textfieldid}" class="bbcode z-buttons">

    {if $images}
    <p>
        {bbcodebutton textfieldid=$textfieldid name="url" titleml=1 __title="Insert a link" key="w" image="bb_url.gif"}
        {bbcodebutton textfieldid=$textfieldid name="email" titleml=1 __title="Insert an email address" key="m" image="bb_email.gif"}
        {bbcodebutton textfieldid=$textfieldid name="image" titleml=1 __title="Insert an image" key="p" image="bb_image.gif"}
        {bbcodebutton textfieldid=$textfieldid name="quote" titleml=1 __title="Insert quote" key="q" image="bb_quote.gif"}
        {bbcodebutton textfieldid=$textfieldid name="code" titleml=1 __title="Insert code" key="c" image="bb_code.gif"}
    </p>
    <p>
        {bbcodebutton textfieldid=$textfieldid name="listopen" titleml=1 __title="Open list" key="l" image="bb_openlist.gif"}
        {bbcodebutton textfieldid=$textfieldid name="listitem" titleml=1 __title="Add list entry" key="o" image="bb_listitem.gif"}
        {bbcodebutton textfieldid=$textfieldid name="listclose" titleml=1 __title="Close list" key="x" image="bb_closelist.gif"}
        {bbcodebutton textfieldid=$textfieldid name="bold" titleml=1 __title="Bold text" key="b" image="bb_bold.gif"}
        {bbcodebutton textfieldid=$textfieldid name="italic" titleml=1 __title="Italic text" key="i" image="bb_italic.gif"}
        {bbcodebutton textfieldid=$textfieldid name="underline" titleml=1 __title="Underlined text" key="u" image="bb_underline.gif"}
    </p>
    {else}
    <p>
        <input title="{gt text='Insert a link' domain="module_bbcode"}" type="button" accesskey="w" name="url_{$counter}" value=" {gt text='URL' domain="module_bbcode"} "       class="BBCode_button z-bt-small" onclick="AddBBCode('{$textfieldid}', 'url')" />
        <input title="{gt text='Insert an email address' domain="module_bbcode"}" type="button" accesskey="m" name="mail_{$counter}" value=" {gt text='E-Mail' domain="module_bbcode"} "    class="BBCode_button z-bt-small" onclick="AddBBCode('{$textfieldid}', 'email')" />
        <input title="{gt text='Insert an image' domain="module_bbcode"}" type="button" accesskey="p" name="image_{$counter}" value=" {gt text='Image' domain="module_bbcode"} " class="BBCode_button z-bt-small" onclick="AddBBCode('{$textfieldid}', 'image')" />
        {if $modvars.BBCode.quote_enabled eq true}
        <input title="{gt text='Insert quote' domain="module_bbcode"}" type="button" accesskey="q" name="quote_{$counter}" value=" {gt text='Quote' domain="module_bbcode"} " class="BBCode_button z-bt-small" onclick="AddBBCode('{$textfieldid}', 'quote')" />
        {/if}
        {if $modvars.BBCode.spoiler_enabled eq true}
        <input title="{gt text='Hide text' domain="module_bbcode"}" type="button" accesskey="s" name="quote_{$counter}" value=" {gt text='Spoiler' domain="module_bbcode"} " class="BBCode_button z-bt-small" onclick="AddBBCode('{$textfieldid}', 'spoiler')" />
        {/if}
        {if $modvars.BBCode.code_enabled eq true}
        {if count($geshi_languages) eq 0}
        <input title="{gt text='Insert code' domain="module_bbcode"}" type="button" accesskey="c" name="code_{$counter}" value=" {gt text='Code' domain="module_bbcode"} " class="BBCode_button z-bt-small" onclick="AddBBCode('{$textfieldid}', 'code')" />
	{else}
    </p>
    <p>
        <label for="code_{$counter}">{gt text='Code' domain="module_bbcode"}:</label>
        <select title="{gt text='Insert code' domain="module_bbcode"}" id="code_{$counter}" name="code_{$counter}" onchange="AddBBCode('{$textfieldid}', 'code', $F('code_{$counter}'))">
            <option value="" selected="selected">{gt text='Select code type' domain="module_bbcode"}</option>
            <option value="">{gt text='No special code' domain="module_bbcode"}</option>
            {foreach item=code from=$geshi_languages}
            <option value="{$code|safehtml}">{$code|safehtml}</option>
            {/foreach}
        </select>
        {/if}
        {/if}
    </p>
    <p>
        <input title="{gt text='Open list' domain="module_bbcode"}" type="button" accesskey="l" name="listopen_{$counter}" value=" {gt text='ul' domain="module_bbcode"} " class="BBCode_button2 z-bt-small" onclick="AddBBCode('{$textfieldid}', 'listopen')" />
        <input title="{gt text='Add list entry' domain="module_bbcode"}" type="button" accesskey="o" name="listitem_{$counter}" value=" {gt text='li' domain="module_bbcode"} " class="BBCode_button2 z-bt-small" onclick="AddBBCode('{$textfieldid}', 'listitem')" />
        <input title="{gt text='Close list' domain="module_bbcode"}" type="button" accesskey="x" name="listclose_{$counter}" value=" {gt text='/ul' domain="module_bbcode"} " class="BBCode_button2 z-bt-small" onclick="AddBBCode('{$textfieldid}', 'listclose')" />
        <input title="{gt text='Bold text' domain="module_bbcode"}" type="button" accesskey="b" name="bold_{$counter}" value=" {gt text='b' domain="module_bbcode"} " class="BBCode_button2 z-bt-small" onclick="AddBBCode('{$textfieldid}', 'bold')" />
        <input title="{gt text='Italic text' domain="module_bbcode"}" type="button" accesskey="i" name="italic_{$counter}" value=" {gt text='i' domain="module_bbcode"} " class="BBCode_button2 z-bt-small" onclick="AddBBCode('{$textfieldid}', 'italic')" />
        <input title="{gt text='Underlined text' domain="module_bbcode"}" type="button" accesskey="u" name="underline_{$counter}" value=" {gt text='u' domain="module_bbcode"} " class="BBCode_button2 z-bt-small" onclick="AddBBCode('{$textfieldid}', 'underline')" />
        <input title="{gt text='Strike out text' domain="module_bbcode"}" type="button" accesskey="u" name="strike_{$counter}" value=" {gt text='s' domain="module_bbcode"} " class="BBCode_button2 z-bt-small" onclick="AddBBCode('{$textfieldid}', 'strike')" />
    </p>
    {/if}

    {if $modvars.BBCode.color_enabled eq true}
    <p>
        <label for="fontcolor_{$counter}">{gt text='Font color' domain="module_bbcode"}:</label>
        <select title="{gt text='Select font color' domain="module_bbcode"}" id="fontcolor_{$counter}" name="fontcolor_{$counter}" onchange="AddBBCode('{$textfieldid}', 'color', $F('fontcolor_{$counter}'))">
            <option style="color:black;"   value="black">{gt text='Black' domain="module_bbcode"}</option>
            <option style="color:darkred;"  value="darkred">{gt text='Dark Red' domain="module_bbcode"}</option>
            <option style="color:red;"      value="red">{gt text='Red' domain="module_bbcode"}</option>
            <option style="color:orange;"   value="orange">{gt text='Orange' domain="module_bbcode"}</option>
            <option style="color:brown;"    value="brown">{gt text='Brown' domain="module_bbcode"}</option>
            <option style="color:yellow;"   value="yellow">{gt text='Yellow' domain="module_bbcode"}</option>
            <option style="color:green;"    value="green">{gt text='Green' domain="module_bbcode"}</option>
            <option style="color:olive;"    value="olive">{gt text='Olive' domain="module_bbcode"}</option>
            <option style="color:cyan;"     value="cyan">{gt text='Cyan' domain="module_bbcode"}</option>
            <option style="color:blue;"     value="blue">{gt text='Blue' domain="module_bbcode"}</option>
            <option style="color:darkblue;" value="darkblue">{gt text='Dark Blue' domain="module_bbcode"}</option>
            <option style="color:indigo;"   value="indigo">{gt text='Indigo' domain="module_bbcode"}</option>
            <option style="color:violet;"   value="violet">{gt text='Violet' domain="module_bbcode"}</option>
            <option style="color:white;"    value="white">{gt text='White' domain="module_bbcode"}</option>
            {if $modvars.BBCode.allow_usercolor eq "yes"}
            <option style="color:black;" value="#{gt text='Enter color code' domain="module_bbcode"}">{gt text='Self defined color' domain="module_bbcode"}</option>
            {/if}
        </select>&nbsp;
    </p>
    {/if}
    {if $modvars.BBCode.size_enabled eq "yes"}
    <p>
        <label for="fontsize_{$counter}">{gt text='Font size' domain="module_bbcode"}:</label>
        <select title="{gt text='Select font size' domain="module_bbcode"}" id="fontsize_{$counter}" name="fontsize_{$counter}" onchange="AddBBCode('{$textfieldid}', 'size', $F('fontsize_{$counter}'))">
            <option value="tiny">{gt text='Tiny' domain="module_bbcode"}</option>
            <option value="small">{gt text='Small' domain="module_bbcode"}</option>
            <option value="normal" selected="selected">{gt text='Normal' domain="module_bbcode"}</option>
            <option value="large">{gt text='Large' domain="module_bbcode"}</option>
            <option value="huge">{gt text='Huge' domain="module_bbcode"}</option>
            {if $modvars.BBCode.allow_usersize eq "yes"}
            <option value="{gt text='Enter text size' domain="module_bbcode"}">{gt text='Self defined size' domain="module_bbcode"}</option>
            {/if}
        </select>
    </p>
    {/if}
</div>

<noscript>
    <p class="noscript">{gt text='Your browser does not support javascript or you turned it off. The BBCode interface has been disabled.' domain="module_bbcode"}</p>
</noscript>