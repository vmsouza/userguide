{include file="{$smarty.const.FOLDER_ROOT}/templates/header.tpl"}
{include file="{$smarty.const.FOLDER_ROOT}/templates/body.tpl"}
{include file="{$smarty.const.FOLDER_ROOT}/templates/menu.tpl"}

<p>
	This is the syntax example page
</p>

<h1>This is header 1</h1>

<p>
	Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here
</p>

<h2>This is header 2</h2>

<p>
	Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here
</p>

<h3>This is header 3</h3>

<p>
	Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here Your text here
</p>

<h2>Lists</h2>
<p>
	<ul class="br">
		<li>Item 1</li>
		<li>Item 2</li>
		<li>Item 3</li>
		<li>Item 4</li>
		<li>Item 5</li>
	</ul>
</p>

<h2>Code</h2>

<p class="code">
{literal}function example() {
	echo "Hello World";
}
{/literal}
</p>

<h2>Console</h2>

<p class="console"># ls
# clear
</p>

<h2>Tables</h2>
<p>
	<table class="table table-sm" width=100%>
		<tbody>
			<tr><th colspan=3 class="bg-blue text-white upper bold">This is the header</th></tr>
			<tr class="bg-grey text-white"><th width=20% nowrap>Header 1</th><th>Header 2</th><th>Header 3</th></tr>
			<tr><td>Col 1</td><td>Col 2</td><td>Col 3</td></tr>
			<tr><td>Col 1</td><td>Col 2</td><td>Col 3</td></tr>
			<tr><td>Col 1</td><td>Col 2</td><td>Col 3</td></tr>
			<tr><td>Col 1</td><td>Col 2</td><td>Col 3</td></tr>
			<tr><td>Col 1</td><td>Col 2</td><td>Col 3</td></tr>
			<tr><td>Col 1</td><td>Col 2</td><td>Col 3</td></tr>
		</tbody>
	</table>
</p>

<h2>Breadcrumb2 feature location</h2>

{breadcrumb2("Page1,Page2,Page3")}

{include file="{$smarty.const.FOLDER_ROOT}/templates/footer.tpl"}
