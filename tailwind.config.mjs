/** @type {import('tailwindcss').Config} */
export default {
    darkMode: 'class',
    content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
    theme: {
        extend: {
            fontFamily: {
                display: ['"Plus Jakarta Sans"', 'system-ui', '-apple-system', 'sans-serif'],
                sans: ['"IBM Plex Sans"', 'system-ui', '-apple-system', 'sans-serif'],
                mono: ['"IBM Plex Mono"', 'ui-monospace', 'SFMono-Regular', 'monospace'],
            },
            colors: {
                canvas: 'rgb(var(--bg-canvas) / <alpha-value>)',
                surface: 'rgb(var(--bg-surface) / <alpha-value>)',
                subtle: 'rgb(var(--bg-subtle) / <alpha-value>)',
                ink: {
                    DEFAULT: 'rgb(var(--ink-primary) / <alpha-value>)',
                    secondary: 'rgb(var(--ink-secondary) / <alpha-value>)',
                    muted: 'rgb(var(--ink-muted) / <alpha-value>)',
                },
                accent: {
                    DEFAULT: 'rgb(var(--accent) / <alpha-value>)',
                    hover: 'rgb(var(--accent-hover) / <alpha-value>)',
                    soft: 'rgb(var(--accent-soft) / <alpha-value>)',
                    ink: 'rgb(var(--accent-ink) / <alpha-value>)',
                },
                hydro: {
                    DEFAULT: 'rgb(var(--hydro) / <alpha-value>)',
                    soft: 'rgb(var(--hydro-soft) / <alpha-value>)',
                },
                line: 'rgb(var(--border-subtle) / <alpha-value>)',
                control: 'rgb(var(--border-control) / <alpha-value>)',
            },
        },
    },
    plugins: [],
};
