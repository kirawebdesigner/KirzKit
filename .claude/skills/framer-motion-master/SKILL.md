---
name: framer-motion-master
description: High-fidelity animations, UI transitions, and complex gesture orchestration for React. Use when building interactive UIs, page transitions, drag-and-drop, or physics-based animations.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# Framer Motion Master (UI/UX)

> **"Make it feel alive."**
> **Philosophy:** Animation should improve usability, not just look cool. Physics-based, not duration-based.

---

## 📑 Content Map

| Section | Topic | Focus | When to Read |
| :--- | :--- | :--- | :--- |
| **1** | **Base Animations** | `initial`, `animate`, `exit` | Standard entry/exit animations |
| **2** | **Gestures** | `whileHover`, `whileTap`, `drag` | Interactive buttons and sliders |
| **3** | **Layout Transitions** | `layout`, `layoutId` | Shared element transitions, magic moves |
| **4** | **Complex Sequences** | `useAnimate`, `variants`, `stagger` | Multi-step orchestrated animations |
| **5** | **Performance** | `LazyMotion`, `useReducedMotion` | Reducing bundle size and ensuring accessibility |

---

## 🚀 The "Magic Move" Checklist

- [ ] **Shared Elements**: Use `layoutId` for cross-page/component transitions.
- [ ] **Staggered Entry**: Use `staggerChildren` in parent variants.
- [ ] **Reduced Motion**: Always check `useReducedMotion` for accessibility.
- [ ] **Exit Presence**: Wrap in `<AnimatePresence>` for exit animations.

---

## ✅ Best Practices

- ✅ **Springs > Tweens**: Use `type: "spring"` for natural movement.
- ✅ **Variants**: Organize logic in objects, not inline props.
- ✅ **Relative Units**: Use `%` or `vh/vw` for responsive animations.
- ✅ **Lazy Loading**: Use `m` and `LazyMotion` for large apps.

---

## ❌ Anti-Patterns

- ❌ **Over-animating**: Animating every single element (distracting).
- ❌ **Duration Over-tuning**: Avoid long, slow durations; keep it snappy (< 0.4s).
- ❌ **Inline Logic**: Avoid messy inline animation objects.
