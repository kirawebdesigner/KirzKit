---
name: shadcn-ui-master
description: Mastering the Radix + Tailwind component architecture. Use for building professional, accessible, and themeable UI components quickly.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# shadcn/ui Master (Component Architecture)

> **"Copy-paste, don't install."**
> **Philosophy:** Accessible by default, styled by you. Total control over the source code.

---

## 🛠️ The "shadcn" Workflow
1. **Core**: Radix UI for accessibility (Headless).
2. **Styling**: Tailwind CSS (Utility-first).
3. **Theming**: CSS Variables (Light/Dark mode).
4. **Icons**: Lucide React.

---

## ✅ Best Practices
- ✅ **Consistency**: Use the `cn()` utility for merging classes.
- ✅ **Customization**: Modify the `ui/` components directly; don't fight the library.
- ✅ **Accessibility**: Never remove the focus rings or ARIA labels.
- ✅ **Composition**: Build complex screens by nesting small, reusable components.

---

## ❌ Anti-Patterns
- ❌ **Prop Drilling Styles**: Use the `className` prop instead of custom style props.
- ❌ **Over-engineering**: Don't add features to a component until you actually need them.
