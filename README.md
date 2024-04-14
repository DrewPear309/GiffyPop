Animated GIF Slideshow

A simple web application for creating fullscreen, animated GIF slideshows.

Features

Fullscreen slideshow display: Showcases your GIFs in an immersive way.
Adapts to any GIF size: No need to worry about resizing your images.
Play/pause functionality: Gives users control over the slideshow.
Speed control: Allows customization of the animation pace.
Thumbnail slider: Provides easy navigation through the GIF collection.
Modern scrollbar design: Enhances the visual appeal of the slider.
Responsive design: Looks great on various screen sizes.
Automatic loading: Streamlines use by loading GIFs from a designated folder.
Batch renaming tool: rename_files.bat helps organize your files efficiently.
Usage

Clone the repository:
git clone https://github.com/your-username/animated-gif-slideshow.git

Navigate to the project:
cd animated-gif-slideshow

Add GIFs:

Place your GIF files in the /gif folder.
Important: Name the files numerically, starting from 0001 (e.g., 0001.gif, 0002.gif, etc.).
Open in a browser: Launch index.html.

Enjoy!

Configuration

Number of GIFs:  Update the loadGifFiles()  function in index.html to reflect the  number of GIFs you're using:

function loadGifFiles() {
// Example: If you have 20 GIFs
for (let i = 1; i <= 20; i++) {
const filename = ${gifFolder}/${String(i).padStart(4, '0')}.gif;
gifFiles.push(filename);
}
}

Renaming Files:

Double-click rename_files.bat in your project directory.
Enter the folder path containing your GIF files.
Press Enter. Files will be renamed automatically.
Credits

Created by Michael Pear and Gemini.

License

MIT License
