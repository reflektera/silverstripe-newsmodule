<?php
/**
 * Make the news globally available. So you don't have to be on a NewsHolderPage.
 * 
 * @package News/blog module
 * @author Simon 'Sphere' 
 */
class NewsExtension extends DataExtension {

	/**
	 * Get all, or a limited, set of items.
	 * @param $limit integer with chosen limit. Called from template via <% loop NewsArchive(5) %> for the 5 latest items.
	 * @todo fix an admin-like feature. If the user has the correct permissions, show all posts, not only live ones.
	 */
	public function NewsArchive($limit = null) {
		if ($limit) {
			$news = News::get()->filter(array('Live' => 1))->limit($limit);
		} else {
			$news = News::get()->filter(array('Live' => 1));
		}
		if($news->count() == 0){
			return null;
		}
		return($news);
	}

	public function allTags() {
		return Tag::get();
	}
	
}
