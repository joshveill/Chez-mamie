import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

// Schema for recipes
const recipeSchema = ({ image }: any) =>
	z.object({
		title: z.string(),
		titleEnglish: z.string().optional(),
		description: z.string(),
		pubDate: z.coerce.date(),
		updatedDate: z.coerce.date().optional(),
		heroImage: image().optional(),
		prepTime: z.string().optional(),
		cookTime: z.string().optional(),
	});

const platsPrincipaux = defineCollection({
	loader: glob({ base: './src/content/plats-principaux', pattern: '**/*.{md,mdx}' }),
	schema: recipeSchema,
});

const soupes = defineCollection({
	loader: glob({ base: './src/content/soupes', pattern: '**/*.{md,mdx}' }),
	schema: recipeSchema,
});

const saucesEtMarinades = defineCollection({
	loader: glob({ base: './src/content/sauces-et-marinades', pattern: '**/*.{md,mdx}' }),
	schema: recipeSchema,
});

const accompagnements = defineCollection({
	loader: glob({ base: './src/content/accompagnements', pattern: '**/*.{md,mdx}' }),
	schema: recipeSchema,
});

const desserts = defineCollection({
	loader: glob({ base: './src/content/desserts', pattern: '**/*.{md,mdx}' }),
	schema: recipeSchema,
});

export const collections = {
	'plats-principaux': platsPrincipaux,
	soupes,
	'sauces-et-marinades': saucesEtMarinades,
	accompagnements,
	desserts,
};
