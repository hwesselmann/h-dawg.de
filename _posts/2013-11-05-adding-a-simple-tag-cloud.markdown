---
layout: post
title: adding a simple tag cloud
date: '2013-11-05 22:35:00'
tags:
- harpjs
- blog
- jade
- tag-cloud
---


After having my blog running with [harpjs](http://harpjs.com) for about a week and having pushed the basic structure to [github](https://github.com/hwesselmann/hb-hdawg-blog) for everybody to use as they wish (if they wish to...), I found it would be great to organize my tags in a tag cloud rather than showing them in an unhandy list - as the amount of tags used grows, this list view is not useful at all to anybody (unless you are searching the page with the browsers built-in search functionality). I still have the list style active on [my archived blog in German](http://blog.h-dawg.de) if you like to see an example.

Getting inspired by the great [posting on creating a sitemap](http://kevin.saliou.name/posts/2013-10-28-harpjs-adding-a-sitemap.html) by Kevin Saliou, I thought it should not be too hard doing something similar to create a tag cloud. This is the first (and current) solution I came up with:

_(As I am still pretty new to javascript, there probably are a lot of things that can be done better or more elegant - even in these few lines of code. Sorry for this...)_
	
##### public/tags/index.jade

	h2 tag cloud
	- var data = public.posts.data;
	- var tags = {};
	- for (var name in data) {
	-		if (name[0] != '_') {
	-			var ts = data[name].tags;
	-			for (var i in ts) {
	-				tags[ts[i]] = tags[ts[i]] === undefined ? 1 : tags[ts[i]] += 1;
	-			}
	-		}
	- }
	
	- var sortedTags = {};
	- var helperArray = [];
	- var maxAppearances = 0;
	- for (var i in tags) {
	- 	helperArray.push(i);
	- }
	
	- helperArray.sort(function randOrd(){
	-		return (Math.round(Math.random())-0.5);
	-	});
	- for (var i in helperArray) {
	- 	sortedTags[helperArray[i]] = tags[helperArray[i]];
	- 	maxAppearances = maxAppearances < tags[helperArray[i]] ? tags[helperArray[i]] : maxAppearances;
	- }
	#tcloud
		each index, tag in sortedTags
			- var fontSize = (1.6 * ((index - minimum_apearances_for_tagcloud_greater_than)/(maxAppearances - minimum_apearances_for_tagcloud_greater_than)));
			if (fontSize > 0)
				- var tagClass = "tc" + fontSize.toFixed(1).replace('.', '');
				a(href='/tags/' + tag.toLowerCase().replace(/ /g,''), title='#{ index }', class='#{ tagClass }') #{ tag } 

I simply iterated over the tags defined in my _\_data.json_-file for each post and sum them up in a new object. Next I am pushing the content to an array and use a small function to randomize the order of tags for displaying. Before doing a standard calculation for retrieving the target style of a tag in the tag cloud, the (randomly sorted) array content is pushed to a new object. As you can see, using three collections to perform this task is not ideal. It is - as I wrote before - my first take on solving this 'issue'.

I have declared some style definitions in my less-file to make the visual differentiation according to the count of appearances of tags. Also, I set up the global harp variable _minimum\_apearances\_for\_tagcloud\_greater\_than_ to be able to easily adjust the minimum number of usages of a tag to be included in the cloud as the overall count of tags goes up.

This is how the result looks like (for the tags used on my German blog):

![tag cloud](/content/images/2014/Sep/hdawg_de_tagcloud.png)