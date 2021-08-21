module.exports = {
  mode: "jit",
  purge: [
    "./app/components/**/*.html.erb",
    "./app/components/**/*.rb",
    "./app/views/**/*.html.erb",
  ],
  darkMode: false,
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
