# Svelte 5 Runes (Expert Guide)

## Core Reactivity
Svelte 5 replaces the legacy `let` and `$:` syntax with explicit "Runes."

### `$state` & `$state.raw`
- **$state(initialValue)**: Creates a reactive proxy. Best for objects/arrays that you mutate.
- **$state.raw(initialValue)**: Creates a reactive variable without a proxy. Much faster for large datasets or API responses where you replace the whole value.
- **Rule:** Use `$state.raw` for AI-generated text streams or large message arrays to avoid performance bottlenecks.

### `$derived` & `$derived.by`
- **$derived(expression)**: Automatically updates when its dependencies change. Always prefer this over `$effect`.
- **$derived.by(() => { ... })**: Use for complex, multi-line logic to derive a value.
- **Rule:** Never update state inside a `$derived` block.

### `$effect` (The Escape Hatch)
- Runs after the DOM updates.
- **Rule:** Only use for side effects (syncing with external libs, logging, local storage). Avoid using it to update local state.

## Components & Props
- **$props()**: Declares reactive props.
  ```svelte
  let { title, children } = $props();
  ```
- **$bindable()**: Explicitly marks a prop as two-way bindable.
  ```svelte
  let { value = $bindable() } = $props();
  ```

## UI Logic
- **Snippets & {@render}**: Replace legacy slots.
  ```svelte
  {#snippet mySnippet(data)}
    <div>{data.text}</div>
  {/snippet}

  {@render mySnippet({ text: 'Hello' })}
  ```
- **Event Listeners**: Use standard `onclick={...}` instead of `on:click`.

## Context (Modern Pattern)
Use a class-based approach with `$state` for shared state:
```ts
// state.svelte.ts
export class AppState {
  count = $state(0);
  increment() { this.count++; }
}

// Then use setContext(KEY, new AppState())
```
