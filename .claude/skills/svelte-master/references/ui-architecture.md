# Svelte 5 Pro UI Architecture

## UI Philosophy
For high-performance AI dashboards, use **Bits UI (v2)** as the accessible engine and **Tailwind CSS** for the skin.

### Core Stack
- **Primitives:** [Bits UI](https://www.bits-ui.com/) (Headless components for Svelte 5).
- **Design System:** [shadcn-svelte (Next)](https://next.shadcn-svelte.com/) (Runes-based UI components).
- **Styling:** Tailwind CSS with CSS Variables for themes.

## Specialist Layout Pattern (Dashboard Shell)

```svelte
<!-- Sidebar.svelte (Svelte 5 / shadcn-style) -->
<script lang="ts">
  import * as Sidebar from "$lib/components/ui/sidebar";
  import { cn } from "$lib/utils";
  
  let { children, class: className } = $props();
  let open = $state(true); // Control state via Runes
</script>

<Sidebar.Provider bind:open>
  <Sidebar.Root class={cn("bg-zinc-950 border-r border-zinc-800", className)}>
    <Sidebar.Content>
      <Sidebar.Group>
        <Sidebar.GroupLabel>Platform</Sidebar.GroupLabel>
        <Sidebar.Menu>
          <!-- Menu items here -->
        </Sidebar.Menu>
      </Sidebar.Group>
    </Sidebar.Content>
  </Sidebar.Root>
  
  <main class="flex-1 overflow-y-auto bg-zinc-950 text-white p-6">
    {@render children()}
  </main>
</Sidebar.Provider>
```

## Styling & Themes (Tailwind + Variables)
Always use the `cn` utility to merge classes safely. Define your theme in `app.css`:

```css
@layer base {
  :root {
    --background: 0 0% 100%;
    --foreground: 240 10% 3.9%;
    --primary: 240 5.9% 10%;
    /* ... more vars */
  }

  .dark {
    --background: 240 10% 3.9%;
    --foreground: 0 0% 98%;
    --primary: 0 0% 98%;
  }
}
```

## Specialist Rules for UI
1. **Directives:** Use `style:--var={value}` to pass JS state to CSS.
2. **Reactivity:** Pass reactive props to UI components as getters if they are used in `new` instances (like `Chat`).
3. **Accessibility:** Never build a custom dropdown or modal from scratch—always use Bits UI primitives to ensure ARIA compliance.
