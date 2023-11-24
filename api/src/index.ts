/**
 * Welcome to Cloudflare Workers! This is your first worker.
 *
 * - Run `npm run dev` in your terminal to start a development server
 * - Open a browser tab at http://localhost:8787/ to see your worker in action
 * - Run `npm run deploy` to publish your worker
 *
 * Learn more at https://developers.cloudflare.com/workers/
 */

import { Hono } from 'hono'
import { cors } from 'hono/cors';
import { cache } from 'hono/cache'
import { bearerAuth } from 'hono/bearer-auth'
import { secureHeaders } from 'hono/secure-headers'

// This ensures c.env.DB is correctly typed
type Bindings = {
	DB: D1Database
}

const app = new Hono<{ Bindings: Bindings }>()

app.use('*', secureHeaders())

app.get(
	'*',
	cache({
		cacheName: 'my-app',
		cacheControl: 'max-age=3600',
	})
)

app.use('/api/*', cors({
	origin: 'https://api.higuitagonzalezy.workers.dev',
	allowHeaders: ['X-Custom-Header', 'Upgrade-Insecure-Requests'],
	allowMethods: ['POST', 'GET', 'PUT', 'DELETE'],
	exposeHeaders: ['Content-Length', 'X-Kuma-Revision'],
	maxAge: 600,
	credentials: true,
}));

app.use('/api/*', bearerAuth({ token: 'ranchwork' }))

app.get("/", async (c) => {
	return c.text('Hello World!')
})

// CATEGORIES

app.get("/api/categories", async (c) => {
	try {
		const { results } = await c.env.DB.prepare("SELECT * FROM categories").all();
		return c.json(results)
	} catch (e) {
		console.log(e);

		return c.json({ err: e }, 500)
	}
})

app.get("/api/categories/:slug", async (c) => {
	const categorySlug = c.req.param("slug")
	try {
		let result = await c.env.DB.prepare("SELECT * FROM categories WHERE slug = ?").bind(categorySlug).first() || { msg: 'category not found' }
		return c.json(result)
	} catch (e) {
		return c.json({ err: e }, 500)
	}
})

app.post('/api/categories', async (c) => {
	const { slug, title, name } = await c.req.json()

	if (!slug) return c.text("Missing slug value for new category")
	if (!title) return c.text("Missing title value for new category")
	if (!name) return c.text("Missing name value for new category")

	const { success } = await c.env.DB.prepare(`insert into categories (slug, title, name) values (?, ?, ?)`).bind(slug, title, name).run()

	if (success) {
		c.status(201)
		return c.text("Created")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

app.put('/api/categories', async (c) => {
	const { slug, title, name } = await c.req.json()

	if (!slug) return c.text("Missing slug value for update category")
	if (!title) return c.text("Missing title value for update category")
	if (!name) return c.text("Missing name value for update category")

	const { success } = await c.env.DB.prepare(`update categories set title = ?, name = ? where slug = ?`).bind(title, name, slug).run()

	if (success) {
		c.status(201)
		return c.text("Updated")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

app.delete('/api/categories', async (c) => {
	const { slug } = await c.req.json()

	if (!slug) return c.text("Missing slug value for delete category")

	const { success } = await c.env.DB.prepare(`delete from categories where slug = ?`).bind(slug).run()

	if (success) {
		c.status(201)
		return c.text("Deleted")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

// COUNTRIES

app.get("/api/countries", async (c) => {
	try {
		const { results } = await c.env.DB.prepare("SELECT * FROM countries").all();
		return c.json(results)
	} catch (e) {
		console.log(e);

		return c.json({ err: e }, 500)
	}
})

app.get("/api/countries/:slug", async (c) => {
	const categorySlug = c.req.param("slug")
	try {
		let result = await c.env.DB.prepare("SELECT * FROM countries WHERE slug = ?").bind(categorySlug).first() || { msg: 'category not found' }
		return c.json(result)
	} catch (e) {
		return c.json({ err: e }, 500)
	}
})

app.post('/api/countries', async (c) => {
	const { slug, title, name } = await c.req.json()

	if (!slug) return c.text("Missing slug value for new country")
	if (!title) return c.text("Missing title value for new country")
	if (!name) return c.text("Missing name value for new country")

	const { success } = await c.env.DB.prepare(`insert into countries (slug, title, name) values (?, ?, ?)`).bind(slug, title, name).run()

	if (success) {
		c.status(201)
		return c.text("Created")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

app.put('/api/countries', async (c) => {
	const { slug, title, name } = await c.req.json()

	if (!slug) return c.text("Missing slug value for update country")
	if (!title) return c.text("Missing title value for update country")
	if (!name) return c.text("Missing name value for update country")

	const { success } = await c.env.DB.prepare(`update countries set title = ?, name = ? where slug = ?`).bind(title, name, slug).run()

	if (success) {
		c.status(201)
		return c.text("Updated")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

app.delete('/api/countries', async (c) => {
	const { slug } = await c.req.json()

	if (!slug) return c.text("Missing slug value for delete country")

	const { success } = await c.env.DB.prepare(`delete from countries where slug = ?`).bind(slug).run()

	if (success) {
		c.status(201)
		return c.text("Deleted")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

// LOCATIONS

app.get("/api/locations", async (c) => {
	try {
		const { results } = await c.env.DB.prepare("SELECT * FROM locations").all();
		return c.json(results)
	} catch (e) {
		console.log(e);

		return c.json({ err: e }, 500)
	}
})

app.get("/api/locations/:slug", async (c) => {
	const categorySlug = c.req.param("slug")
	try {
		let result = await c.env.DB.prepare("SELECT * FROM locations WHERE slug = ?").bind(categorySlug).first() || { msg: 'category not found' }
		return c.json(result)
	} catch (e) {
		return c.json({ err: e }, 500)
	}
})

app.post('/api/locations', async (c) => {
	const { slug, title, name, country } = await c.req.json()

	if (!slug) return c.text("Missing slug value for new location")
	if (!title) return c.text("Missing title value for new location")
	if (!name) return c.text("Missing name value for new location")
	if (!country) return c.text("Missing country value for new location")

	const { success } = await c.env.DB.prepare(`insert into locations (slug, title, name, country) values (?, ?, ?, ?)`).bind(slug, title, name, country).run()

	if (success) {
		c.status(201)
		return c.text("Created")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

app.put('/api/locations', async (c) => {
	const { slug, title, name, country } = await c.req.json()

	if (!slug) return c.text("Missing slug value for update location")
	if (!title) return c.text("Missing title value for update location")
	if (!name) return c.text("Missing name value for update location")
	if (!country) return c.text("Missing country value for update location")

	const { success } = await c.env.DB.prepare(`update locations set title = ?, name = ?, country = ? where slug = ?`).bind(title, name, slug, country).run()

	if (success) {
		c.status(201)
		return c.text("Updated")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

app.delete('/api/locations', async (c) => {
	const { slug } = await c.req.json()

	if (!slug) return c.text("Missing slug value for delete location")

	const { success } = await c.env.DB.prepare(`delete from locations where slug = ?`).bind(slug).run()

	if (success) {
		c.status(201)
		return c.text("Deleted")
	} else {
		c.status(500)
		return c.text("Something went wrong")
	}
})

export default app
