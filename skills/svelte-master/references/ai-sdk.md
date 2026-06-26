# AI SDK for Svelte (Vercel)

## The `Chat` Class
In Svelte, the SDK uses a `Chat` class instead of a hook.

### Core Usage
```svelte
<script>
  import { Chat } from '@ai-sdk/svelte';
  
  const chat = new Chat({
    initialMessages: [],
    // Reactive args must use getters
    get id() { return $props().id; }
  });
</script>

<div>
  {#each chat.messages as message}
    <p>{message.content}</p>
  {each}
</div>
```

### Specialist Rules
- **No Destructuring:** NEVER destructure `chat` properties (e.g., `const { messages } = chat`). This breaks reactivity in Svelte. Access them directly: `chat.messages`, `chat.input`.
- **Reactive Getters:** Any argument to `new Chat(...)` that depends on reactive state (props, `$state`) MUST be passed as a getter.
- **Loading State:** Check `chat.status` (one of: 'idle', 'loading', 'streaming', 'submitting').

## Multi-Step Tool Calls
To enable the model to call a tool, receive the result, and continue generating in one go:
```ts
// In +server.ts
const result = streamText({
  model: openai('gpt-4o'),
  tools: {
    getWeather: { ... }
  },
  stopWhen: (step) => step.stepCount === 3 // Limit steps for safety
});
```

## State Persistence
- **Client-side:** Use `chat.messages` as the source of truth for the UI.
- **Server-side:** Use `Drizzle ORM` to store messages in Postgres.
- **Streaming:** Return `result.toUIMessageStreamResponse()` from your `+server.ts` route.
