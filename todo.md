# Sinatra Site To-Do List

### Improvements

- [x] separate logic on `my-site.rb` to other module files
- [ ] insert data for paragraphs on project page
- [x] separate the header and footer into partials
- [ ] add pictures to project pages
- [ ] move data into a CSV file

### Bugs

+ [ ] `<footer>` disappears when browser height is < 744px
+ [ ] "get at me, yo." should only change color when it is hovered (not the whole `<header>`)
+ [ ] 4th child of project tiles should have a margin-right

### Styling Enhancements/Fixes

+ [x] project tile borders could expand out on hover  

      .projects:hover > .project {
        padding: 3px 0;
      }

+ [x] contact header drop-down

+ [ ] get "get at me, yo." to change the line's hover color too

+ [ ] enable left & right scrolling

+ [ ] adding left and right nav arrows to project pages (with project names?!)
