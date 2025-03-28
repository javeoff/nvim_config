return {
	openai = {
		endpoint = "https://api.openai.com/v1/chat/completions",
		secret = os.getenv("OPENAI_API_KEY"),
	},
	openrouter = {
		endpoint = "https://openrouter.ai/api/v1",
		secret = os.getenv("OPENROUTER_API_KEY"),
	},
}
