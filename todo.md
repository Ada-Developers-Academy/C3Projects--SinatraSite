# Sinatra Site To-Do List

### Improvements

- [x] separate logic on `my-site.rb` to other module files
- [x] separate the header and footer into partials
- [ ] insert data for paragraphs on project page
- [ ] add pictures to project pages
- [ ] move data into a CSV file

### Bugs

+ [x] `<footer>` disappears when browser height is < 744px _update: assuming behavior is normal_
+ [ ] 4th child of project tiles should have a margin-right

### Styling Enhancements/Fixes

+ [x] project tile borders could expand out on hover  

      .projects:hover > .project {
        padding: 3px 0;
      }

+ [x] contact header drop-down
+ [ ] enable left & right scrolling on homepage
+ [ ] adding left and right nav arrows to project pages (with project names?!)
