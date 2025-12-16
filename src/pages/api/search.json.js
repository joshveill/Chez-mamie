import { getCollection } from 'astro:content';

export async function GET() {
	const categories = [
		{ id: 'plats-principaux', name: 'Plats Principaux' },
		{ id: 'desserts', name: 'Desserts' },
		{ id: 'sauces-et-marinades', name: 'Sauces et Marinades' },
		{ id: 'accompagnements', name: 'Accompagnements' },
		{ id: 'soupes', name: 'Soupes' }
	];

	const allRecipes = [];

	for (const category of categories) {
		const recipes = await getCollection(category.id);
		for (const recipe of recipes) {
			// Extract ingredients from the recipe body
			const body = recipe.body || '';

			allRecipes.push({
				title: recipe.data.title,
				titleEnglish: recipe.data.titleEnglish || '',
				description: recipe.data.description,
				category: category.name,
				categorySlug: category.id,
				slug: recipe.id,
				url: `/recettes/${category.id}/${recipe.id}/`,
				// Include body for ingredient search
				content: body.toLowerCase(),
				prepTime: recipe.data.prepTime || '',
				cookTime: recipe.data.cookTime || '',
			});
		}
	}

	return new Response(JSON.stringify(allRecipes), {
		headers: { 'Content-Type': 'application/json' }
	});
}
