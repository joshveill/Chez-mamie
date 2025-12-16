import { getCollection } from 'astro:content';
import rss from '@astrojs/rss';
import { SITE_DESCRIPTION, SITE_TITLE } from '../consts';

export async function GET(context) {
	const categories = ['plats-principaux', 'desserts', 'sauces-et-marinades', 'accompagnements', 'soupes'];
	const allRecipes = [];

	for (const category of categories) {
		const recipes = await getCollection(category);
		recipes.forEach((recipe) => {
			allRecipes.push({
				...recipe.data,
				link: `/recettes/${category}/${recipe.id}/`,
			});
		});
	}

	// Sort by title
	allRecipes.sort((a, b) => a.title.localeCompare(b.title, 'fr'));

	return rss({
		title: SITE_TITLE,
		description: SITE_DESCRIPTION,
		site: context.site,
		items: allRecipes,
	});
}
