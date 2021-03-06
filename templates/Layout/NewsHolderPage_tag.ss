<div class="wrapper row1">
  <section id="shout" class="clear">
<% with currentTag %>
	    <% if Impression %>
    <figure>
      <figcaption>
	      <% else %>
	      <div class="noImage">
	      <% end_if %>
        <h1><% _t('NewsHolderPage.TAG', Tag) %>: <a href="{$Top.URLSegment}/tags">$Title</a></h1>
	<br />
        $Description
	<br />
	<a href="{$Top.URLSegment}/tags"><% _t('NewsHolderPage_Tag.ALLTAGS', All tags) %>.</a>
	<br />&nbsp;<br />
	<a href="https://twitter.com/share" class="twitter-share-button" data-via="{YOUR TWITTER ACCOUNT}" data-dnt="true">Tweet</a>
	<br />
	<div class="fb-like" data-href="$BaseHref{$Up.URLSegment}/show/$URLSegment" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-font="segoe ui"></div>
	<br />

	    <% if Impression %>
      </figcaption>
	    <% with Impression %>
      <div>$SetSize(410,440)</div>
<% end_with %>
    </figure>
	    <% else %>
	    </div>
      <% end_if %>
<% end_with %>
  </section>
</div>
<div class="wrapper row2">
  <div id="container">
    <div id="homepage">
      <% include TaggedItems %>
    </div>
        <div class="clear"></div>
  </div>
</div>