# Svelte 5 + AI SDK Boilerplate

## Chat Component (Basic)
```svelte
<script lang="ts">
  import { Chat } from '@ai-sdk/svelte';
  import { Message } from 'lucide-svelte';

  const chat = new Chat({
    api: '/api/chat',
    initialMessages: []
  });

  // Derived state for smooth UI
  const isStreaming = $derived(chat.status === 'streaming');
</script>

<div class="flex flex-col h-screen p-4 bg-zinc-950 text-white font-sans">
  <!-- Message List -->
  <div class="flex-1 overflow-y-auto space-y-4 mb-4">
    {#each chat.messages as message}
      <div class="p-3 rounded-lg {message.role === 'user' ? 'bg-zinc-800 self-end ml-12' : 'bg-zinc-900 self-start mr-12'}">
        <p class="text-sm">{message.content}</p>
      </div>
    {/each}
  </div>

  <!-- Input Form -->
  <form 
    onsubmit={(e) => { e.preventDefault(); chat.handleSubmit(e); }}
    class="relative"
  >
    <input
      value={chat.input}
      oninput={(e) => (chat.input = e.currentTarget.value)}
      placeholder="Type a message..."
      class="w-full p-4 pr-12 rounded-xl bg-zinc-900 border border-zinc-800 focus:outline-none focus:ring-2 focus:ring-blue-500 transition-all"
      disabled={isStreaming}
    />
    <button 
      type="submit"
      class="absolute right-2 top-2 p-2 bg-blue-600 rounded-lg disabled:opacity-50"
      disabled={isStreaming || !chat.input}
    >
      <Message size={20} />
    </button>
  </form>
</div>
```

## API Route (+server.ts)
```ts
import { openai } from '@ai-sdk/openai';
import { streamText } from 'ai';
import type { RequestHandler } from './$types';

export const POST: RequestHandler = async ({ request }) => {
  const { messages } = await request.json();

  const result = streamText({
    model: openai('gpt-4o-mini'),
    messages,
  });

  return result.toUIMessageStreamResponse();
};
```
