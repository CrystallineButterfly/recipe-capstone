module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
    "./*.html",
    "./ecommerce/*.html",
    "./assets/**/*.js",
  ],
  theme: {
    extend: {
      colors: {
        light: "#ffffff",
        accent: "#7F557D",
        accentH: "#673C4F",
        thead: "#f7f8f9",
        textHeading: "#1f2937",
        textColor: "#6b7280",
      },
    },
  },
  plugins: [require("tailgrids/plugin")],
};
