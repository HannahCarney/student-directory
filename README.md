<div id="readme" class="blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="mainContentOfPage"><h1>
<a id="user-content-the-basics-student-directory" class="anchor" href="#the-basics-student-directory" aria-hidden="true"><span class="octicon octicon-link"></span></a>The Basics: Student Directory</h1>

<p>In this week we are aiming to get you ready with a lot of basic concepts and practices that will be the base for your further development as a web developer. Although they might look simple, it is really important that you grasp these concepts.</p>

<p>Each week we will be working on a project that will solidify your understanding of the techniques and practices you'll be learning day by day; this week we are going to build a simple terminal based student directory.</p>

<p>Make sure that you go through the <strong><a href="/makersacademy/pre_course/blob/master/pills.md">knowledge pills</a> (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle">)</strong> when you struggle.</p>

<h2>
<a id="user-content-overview" class="anchor" href="#overview" aria-hidden="true"><span class="octicon octicon-link"></span></a>Overview</h2>

<p>The goal of this tutorial is not only to show you the Ruby code that you'll need to write (that's the easy bit) but to show you the process of creating a project from scratch. Most importantly we'll explain what to do, in what order and why do it at all.</p>

<p><strong>It will have the following features:</strong></p>

<ul class="task-list">
<li>Show the list of all students

<ul class="task-list">
<li>ordered by name</li>
<li>grouped by cohort (as an exercise)</li>
</ul>
</li>
<li>Add new students by asking the user to input the names</li>
<li>Show information about a given student</li>
<li>Add information related to a particular student (e.g. hobbies)</li>
<li>Interactive menu to ask the user what he or she would like to do</li>
<li>Displaying aggregate info (statistics)</li>
<li>Saving this data to a file</li>
<li>Loading it from the file</li>
</ul>

<p>The script will be invoked from the command-line and it will only use pure Ruby, that is, there will be no external libraries to use. It will have text-based interface that will not look particularly exciting but it's really important to understand how to build basic things before trying to create sophisticated websites.</p>

<h2>
<a id="user-content-version-0-setting-up-your-environment" class="anchor" href="#version-0-setting-up-your-environment" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 0: Setting up your environment</h2>

<p>First, open the terminal and navigate to your project directory. Then create a new directory called "student-directory" (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/command_line.md">The command line</a>), change into it and initialise it as an empty git repository (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/version_control.md">Version Control with Git</a>).</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/term.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/term.png" alt="terminal" style="max-width:100%;"></a></p>

<p>It makes sense to keep all projects you'll be working on in a designated project directory (and not on desktop, for example).</p>

<p>We always begin a new project (unless it's a throwaway code that will not live until tomorrow) by initialising a new repository. </p>

<p><strong>Now let's create a repository on Github!</strong></p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/new_github_repo.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/new_github_repo.png" alt="new repo" style="max-width:100%;"></a></p>

<p>Make it public, name it "student-directory" (it's usually a good idea to use the same name for Github repos and local folders) but don't initialise it with a README – we'll do it manually. This is what your repo will look like right after it's created.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/new_github_repo_created.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/new_github_repo_created.png" alt="new repo created" style="max-width:100%;"></a></p>

<p>Let's now initialise the repo with a README file and create a local remote ( <img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/version_control.md">Version Control with Git</a>). Github gives you steps required to do it:</p>

<pre><code>touch README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:makersacademy/student-directory.git
git push -u origin master
</code></pre>

<p><strong>Don't copy-paste them, though. Type everything in, it's really important to remember everything. If you copy-paste code, you may as well skip the exercise altogether.</strong></p>

<p>Typing everything in also forces you to think about what exactly is going on. For example, what about the <code>git init</code> command? Is it really necessary here, given that we've already initialised the repo? Maybe not.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/git_push.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/git_push.png" alt="git push" style="max-width:100%;"></a></p>

<p>Once you do it, refresh the Github page. It should show an empty repo (with the README.md file only).</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/new_github_repo_readme.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/new_github_repo_readme.png" alt="new repo readme" style="max-width:100%;"></a></p>

<p>Good, now we have an empty repo with a remote called "master" pointing to Github. This is the basic groundwork you need to do before creating any new project.</p>

<p>Note how Github displays the contents of the <code>README.md</code> file on your project page (it's empty now but you can still see it below the file list). This is because the file is named README, it's the default name for the file that has information about the project. The "md" extension means that the format of this file is <a href="http://daringfireball.net/projects/markdown/basics">markdown</a>. We'll write some <a href="http://daringfireball.net/projects/markdown/basics">markdown</a> soon.</p>

<p>Let's start SublimeText now (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/installing_sublime.md">Sublime Text</a>). If you have followed the pill, you should be able to do this by running <code>subl .</code> in the project directory (note there's a space between <code>subl</code> and the dot). The dot stands for the current directory (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/command_line.md">The command line</a>) and <code>subl</code> is the shortcut that the developers often create for SublimeText. If you don't have it ( <em>that is, if you get an error message when trying to run the command</em>), you probably don't have this shortcut set up ).</p>

<p>After you launch SublimeText, it should look like this.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/sublime.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/sublime.png" alt="sublime" style="max-width:100%;"></a></p>

<p>If you don't see the list of files and folders on the left, select View → Sidebar → Show Open Files.</p>

<p>Let's now write a description for the project. This is a good idea because it will let other developers to quickly see what the codebase does. Every good project on Github has a good <code>README</code> file.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/readme.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/readme.png" alt="readme" style="max-width:100%;"></a></p>

<p>This README file is written using <a href="https://help.github.com/articles/github-flavored-markdown">Github-flavoured markdown</a>. Take a look the both the <a href="http://daringfireball.net/projects/markdown/basics">markdown reference</a> and the <a href="https://help.github.com/articles/github-flavored-markdown">Github-flavoured markdown</a> reference so that you know what's possible.</p>

<p>Then, write your README file (you don't have to use the same we used), commit the changes and push to Github to see what it looks like there.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/git_config.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/git_config.png" alt="gitconfig" style="max-width:100%;"></a></p>

<p>If you get the <strong>"push.default is unset"</strong> warning, like in the screenshot above, just choose the <code>simple</code> mode as the default.</p>

<pre><code>git config --global push.default simple
</code></pre>

<p>There's an <a href="http://stackoverflow.com/questions/11872984/what-is-the-difference-between-git-push-default-current-and-push-default-upstrea">explanation on StackOverflow</a> of what this warning means. Don't worry if it sounds a bit cryptic right now.</p>

<p>After we push the README file, we'll see it on Github.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/student_directory_readme.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/student_directory_readme.png" alt="studentreadme" style="max-width:100%;"></a></p>

<p>Now we have a local and and a remote repo with a README file that describes the project we're about to create.</p>

<p>Throughout this and future tutorials we will be giving links to specific commits on Github that correspond to the relevant section of the tutorial. So, if you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/f68074835a0eb6587bbd0064df05a52f0f0c3cb9">follow this link</a>.</p>

<h2>
<a id="user-content-version-1-printing-the-list-of-students" class="anchor" href="#version-1-printing-the-list-of-students" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 1: Printing the list of students</h2>

<p>Let's now write some Ruby code. First, create a file called directory.rb in the project directory by using the "touch" command (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/command_line.md">The command line</a>). Don't forget the extension (".rb") and don't put any spaces in the filename.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/touch.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/touch.png" alt="touch" style="max-width:100%;"></a></p>

<p>Now you should see the empty file in SublimeText.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/directoryrb.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/directoryrb.png" alt="directoryrb" style="max-width:100%;"></a></p>

<p>Now it is time to print off a list of names. We have supplied some fictional names here that you could use - although now could be a great time to get in touch with other members of your cohort and use their names instead! </p>

<p><strong>Reminder: do not copy-paste the code! Always type everything yourself.</strong></p>

<div class="highlight highlight-ruby"><pre>puts <span class="pl-s1"><span class="pl-pds">"</span>The students of my cohort at Makers Academy<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>-------------<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span></pre></div>

<p>Now save the file and run it by passing the filename as an argument to ruby.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/directoryexec.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/directoryexec.png" alt="directoryexec" style="max-width:100%;"></a></p>

<p>You should see all names printed on the screen. If you get an error, it may look like this.</p>

<div class="highlight highlight-ruby"><pre>directory.<span class="pl-c1">rb:</span><span class="pl-c1">7</span>: syntax error, unexpected tCONSTANT, expecting <span class="pl-k">end</span><span class="pl-k">-</span>of<span class="pl-k">-</span>input
puts <span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>
          <span class="pl-k">^</span></pre></div>

<p>Here, Ruby gives you the name of the file ("directory.rb"), the line where the error occurred (7), specifics of the problem ("syntax error, unexpected tCONSTANT, expecting end-of-input") and the line that causes the error (<code>puts "Alex De Large"</code>). Finally, it uses the caret (^) symbol to show where exactly the problem lies. In this case I caused this problem to happen by "accidentally" using an single quote instead of a double quote on the previous line. So Ruby assumed the string from the previous line continued until the first double quote on this line. After that Ruby decided that "Alex" is not part of the string (because it had just been closed), so it must be part of the program. However, we don't have a variable called Alex, so Ruby got confused and threw an error, letting us know that it has no idea what "Alex" is. All because I <em>accidentally</em> used a single quote instead of a double quote.</p>

<p>Let's do two things now. Firstly, we need to commit the change. Secondly, we'll discuss what exactly this code does.</p>

<p>We need to commit the change because we've just done a small but meaningful piece of work. Every time you do finish a small task, you need to commit your code. What is a small task? There's no fast and easy rule but there are a few rules of thumb you can use.</p>

<p>It's a good idea to commit code once a specific change was introduced to the codebase and this change is finished. For example, we've just put a list of students in the codebase. We are happy with the codebase as it is right now because it works. A bad time to commit the code would be when the code is broken (it throws an error) or half-finished (you haven't double-checked the spelling yet, for example).</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/git_push_2.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/git_push_2.png" alt="git push2" style="max-width:100%;"></a></p>

<p>Now, what does the code do? Every puts statement prints a line of text in the terminal. More precisely, it prints it to the standard output (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/command_line.md">The command line</a>).</p>

<p><code>puts</code> itself is a method provided by Ruby. The string after every <code>puts</code> is an argument. In Ruby we can use parentheses around arguments but it's not mandatory (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/methods.md">methods</a>). So, another way of writing the same code would be</p>

<div class="highlight highlight-ruby"><pre>puts(<span class="pl-s1"><span class="pl-pds">"</span>The students of my cohort at Makers Academy<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>-------------<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>)
puts(<span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span>)</pre></div>

<p>The method "puts" adds a line return after printing each argument. It's invisible but it causes the "cursor" to wrap onto the next line. That's why every name is printed on a new line. What if we didn't want the line to be wrapped automatically? Ruby provides a method "print" that's just like "puts" except it doesn't wrap the line. Add this code to the end of your Ruby file:</p>

<div class="highlight highlight-ruby"><pre>print <span class="pl-s1"><span class="pl-pds">"</span>Overall, we have <span class="pl-pds">"</span></span>
print <span class="pl-c1">9</span>
puts <span class="pl-s1"><span class="pl-pds">"</span> great students<span class="pl-pds">"</span></span></pre></div>

<p>Note how the lines don't wrap if we use "print".</p>

<pre><code>ruby directory.rb
The students of my cohort at Makers Academy
-------------
Dr. Hannibal Lecter
Darth Vader
Nurse Ratched
Michael Corleone
Alex De Large
The Alien
Terminator
Freddy Kruger
The Joker
Overall, we have 9 great students
</code></pre>

<p>If you want to put the line break character manually, you can do it like this:</p>

<pre><code>print "line1\nline2\nline3" # has to be in double quotes!
</code></pre>

<p>The "\n" is an escape sequence (<em><a href="http://en.wikibooks.org/wiki/Ruby_Programming/Strings#Escape_sequences">There are many more of them</a></em>).</p>

<p>So, now that we added the student count, let's commit it again.</p>

<p><a href="/makersacademy/pre_course/blob/master/student_directory/images/git_push_3.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/git_push_3.png" alt="git push3" style="max-width:100%;"></a></p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/eff34bdc6aa33810178b6dac18bbe7e917523fef">follow this link</a>.</p>

<p>Let's now add some comments to our Ruby code as well.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-c">#first we print the list of students</span>
puts <span class="pl-s1"><span class="pl-pds">"</span>The students of my cohort at Makers Academy<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>-------------<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span>
<span class="pl-c">#finally, we print the total</span>
print <span class="pl-s1"><span class="pl-pds">"</span>Overall, we have <span class="pl-pds">"</span></span>
<span class="pl-c">#it’s important that print() doesn’t add new line characters</span>
print <span class="pl-c1">9</span>
puts <span class="pl-s1"><span class="pl-pds">"</span> great students<span class="pl-pds">"</span></span></pre></div>

<p>And let's commit the code again, just for practice (don't forget to add a meaningful commit message).</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/44f6e11c888d45931e802bc5da082e97eeed2046">follow this link</a>.</p>

<h2>
<a id="user-content-version-2-refactoring-cleaning-the-code" class="anchor" href="#version-2-refactoring-cleaning-the-code" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 2: Refactoring (cleaning the code)</h2>

<p>Refactoring is the process of improving the code without changing what it does. Let's make our code slightly better by introducing a variable instead of a number on line 16. Why? It's more descriptive. It may not matter much in such a simple example but in a more complex programs numbers numbers used on their own may be a source of confusion. There's a good discussion of these numbers (called magic numbers) and a few code examples in <a href="http://en.wikipedia.org/wiki/Magic_number_(programming)">Wikipedia</a>.</p>

<p>So, let's extract the number 9 into a variable. Define it at the beginning of the file</p>

<div class="highlight highlight-ruby"><pre>student_count <span class="pl-k">=</span> <span class="pl-c1">9</span></pre></div>

<p>and print it instead of the raw number</p>

<div class="highlight highlight-ruby"><pre>print student_count</pre></div>

<p>Now your code looks like this.</p>

<div class="highlight highlight-ruby"><pre>        student_count <span class="pl-k">=</span> <span class="pl-c1">9</span>
        <span class="pl-c"># first, we print the list of students</span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>The students of my cohort at Makers Academy<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>-------------<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span>
        <span class="pl-c"># finally, we print the total</span>
        print <span class="pl-s1"><span class="pl-pds">"</span>Overall, we have <span class="pl-pds">"</span></span>
        <span class="pl-c"># it's important that print() doesn't add new line characters</span>
        print student_count
        puts <span class="pl-s1"><span class="pl-pds">"</span> great students<span class="pl-pds">"</span></span></pre></div>

<p>Now line 17 clearly communicates what it does. Let's reduce the line count by two by using interpolation (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/string_interpolation.md">String interpolation</a> ). Replace the last three lines with this.</p>

<div class="highlight highlight-ruby"><pre> <span class="pl-c"># finally, we print the total</span>
puts <span class="pl-s1"><span class="pl-pds">"</span>Overall, we have <span class="pl-pse">#{</span><span class="pl-s2">student_count</span><span class="pl-pse"><span class="pl-s2">}</span></span> great students<span class="pl-pds">"</span></span></pre></div>

<p>Now our code is both shorter and more expressive than it was before. Good time to commit it.</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/d47b0fa16e4e0c62c7194a3cbb49274dd509c6fd">follow this link</a>.</p>

<h2>
<a id="user-content-version-3-arrays" class="anchor" href="#version-3-arrays" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 3: Arrays</h2>

<p>Our code works but it's not perfect. There are two problems here. Firstly, it's repetitive. The same operation – printing the student name – is repeated several times. Every time you see any kind of repetition in code, try to eliminate it because it will result in a hard to maintain code at best or be a source of nasty bugs at worst. For example, if we want to add one more student to our program, do we really have to type "puts" again? What if we had a thousand students? Oh, and we'll need to manually update <code>student_count</code>. That's a big red flag.</p>

<p>Secondly, the data (student names) is tightly coupled with what we do with this data (printing it). What if we wanted to change the way the students are printed, for example putting a number in front of the name? That'd mean updating every single line that prints a student name. What if we wanted to print the list twice: first in alphabetical order, then in reverse order? You can see how quickly it can all go wrong.</p>

<p>Arrays (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/arrays.md">Arrays</a> ) will help us avoid both of these problems. Let's start by putting the students into an array. Remember, don't copy-paste, type everything in yourself, it's important. Make sure you understand every line here: <em>if you don't, talk to other students or the coaches</em>.</p>

<div class="highlight highlight-ruby"><pre>        student_count <span class="pl-k">=</span> <span class="pl-c1">9</span>
        <span class="pl-c"># let's put all students into an array</span>
        students <span class="pl-k">=</span> [
          <span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span>
        ]
        <span class="pl-c"># and then print them</span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>The students of my cohort at Makers Academy<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>-------------<span class="pl-pds">"</span></span>
        puts students[<span class="pl-c1">0</span>]
        puts students[<span class="pl-c1">1</span>]
        puts students[<span class="pl-c1">2</span>]
        puts students[<span class="pl-c1">3</span>]
        puts students[<span class="pl-c1">4</span>]
        puts students[<span class="pl-c1">5</span>]
        puts students[<span class="pl-c1">6</span>]
        puts students[<span class="pl-c1">7</span>]
        puts students[<span class="pl-c1">8</span>]
        <span class="pl-c"># finally, we print the total</span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Overall, we have <span class="pl-pse">#{</span><span class="pl-s2">student_count</span><span class="pl-pse"><span class="pl-s2">}</span></span> great students<span class="pl-pds">"</span></span></pre></div>

<p>It still does exactly the same thing as before. However, if still suffers from the same problems that we discussed above. Why did we put the students into an array then? Because now we can actually improve our code.</p>

<p>Let's start with a student count. Now that our students are in an array, we can use the array's length() method to count them instead of doing it manually. Get rid of the <code>student_count</code> variable and update the last line:</p>

<div class="highlight highlight-ruby"><pre>        puts <span class="pl-s1"><span class="pl-pds">"</span>Overall, we have <span class="pl-pse">#{</span><span class="pl-s2">students.length</span><span class="pl-pse"><span class="pl-s2">}</span></span> great students<span class="pl-pds">"</span></span></pre></div>

<p>Now if we put one more student in the array, we won't have to update the <code>student_count</code> variable. That's really good news.</p>

<p>What about the repetition? There's a way to print every value in the array without referring to each value individually. We will discuss how it actually works later on but for now you can learn how to do it even if you don't understand everything that's going on behind the scenes.</p>

<p>Doing some operation on every value of an array is called iterating. One such operation is called an iteration. So if we need to print every value of an array, we need to iterate over this array and print the current value on every iteration. Makes sense? Let's see what the code would look like. Instead of <code>puts students[0]</code> ... <code>puts students[8]</code> you can do this:</p>

<div class="highlight highlight-ruby"><pre>        students.each <span class="pl-k">do </span>|<span class="pl-vo">student</span>|
          puts student
        <span class="pl-k">end</span></pre></div>

<p>We'll discuss exactly how this works later, but for now just understand what it does. This code takes every name from the array <code>students</code> and for each name it executes the block of code between <code>do</code> and <code>end</code>. Every execution of this block of code is called an iteration. On every iteration, the current name will be assigned to the value <code>student</code> that we specified between two vertical bars.</p>

<p>So, on the very first iteration, it will take the first value from the array ("Dr. Hannibal Lecter") and assign it to the variable <code>student</code>. Then, it will execute the block of code (<code>puts student</code>) that will print it to the screen. Since "Dr. Hannibal Lecter" is not the last person in our array of charming students, Ruby will perform the second iteration, assigning the value of "Darth Vader" to the variable <code>student</code> and printing it again.</p>

<p>Now our program is much shorter.</p>

<div class="highlight highlight-ruby"><pre>        <span class="pl-c"># let's put all students into an array</span>
        students <span class="pl-k">=</span> [
          <span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>,
          <span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span>
        ]
        <span class="pl-c"># and then print them</span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>The students of my cohort at Makers Academy<span class="pl-pds">"</span></span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>-------------<span class="pl-pds">"</span></span>
        students.each <span class="pl-k">do </span>|<span class="pl-vo">student</span>|
          puts student
        <span class="pl-k">end</span>
        <span class="pl-c"># finally, we print the total</span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>Overall, we have <span class="pl-pse">#{</span><span class="pl-s2">students.length</span><span class="pl-pse"><span class="pl-s2">}</span></span> great students<span class="pl-pds">"</span></span></pre></div>

<p>By doing this we have solved two problems. Firstly, we separated the data (the array) from the operation on this array. This means that if we want to print this array again, it's very easy to do. It also means that if we want to add one more student, we won't have to do anything other than adding one more name to the array. On top of that, we could get rid of the <code>student_count</code> variable.</p>

<p>Secondly, we got rid of the repetition. This means that if we want to change the way this array is printed, there's only one line to update, <code>puts student</code>.</p>

<p>It's certainly a good time to commit the code.</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/a08bb43b1ba0f4304ff6602daf8cdf92cec70020">follow this link</a>.</p>

<h2>
<a id="user-content-version-4-methods" class="anchor" href="#version-4-methods" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 4: Methods</h2>

<p>Remember we discussed methods (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/methods.md">methods</a> )? Let's create a few methods to make our program easier to read.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-c">#let's put all students into an array</span>
students <span class="pl-k">=</span> [
  <span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>,
  <span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>,
  <span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>,
  <span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>,
  <span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>,
  <span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>,
  <span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>,
  <span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>,
  <span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span>
]

<span class="pl-k">def</span> <span class="pl-en">print_header</span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>The students of my cohort at Makers Academy<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>-------------<span class="pl-pds">"</span></span>
<span class="pl-k">end</span>

<span class="pl-k">def</span> <span class="pl-en">print</span>(<span class="pl-vpf">names</span>)
  names.each <span class="pl-k">do </span>|<span class="pl-vo">name</span>|
    puts name
  <span class="pl-k">end</span>
<span class="pl-k">end</span>

<span class="pl-k">def</span> <span class="pl-en">print_footer</span>(<span class="pl-vpf">names</span>)
  puts <span class="pl-s1"><span class="pl-pds">"</span>Overall, we have <span class="pl-pse">#{</span><span class="pl-s2">names.length</span><span class="pl-pse"><span class="pl-s2">}</span></span> great students<span class="pl-pds">"</span></span>
<span class="pl-k">end</span> 
<span class="pl-c">#nothing happens until we call the methods</span>
print_header
print(students)
print_footer(students)</pre></div>

<p>Let's start by discussing why we've done it in the first place and then talk about how it works.</p>

<p>Now that we have extracted the code into the methods, the body of our program reads almost like English. First, we print the header. Then we print the list of students. Finally, we print the footer. It's easy to see what's going on without looking at the implementation.</p>

<p>Note that we are now passing the students variable to the methods as an argument (called "names" in both cases). This is because the methods don't have access to local variables defined outside them, so we couldn't have references <code>students</code>. In any case, in most cases it's a good idea to pass the data the a method needs as an argument to make the code easier to understand.</p>

<p>Let's check the code in. Are you using good commit messages?</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/d8a01783d4c57379cb95160456fc830d45a42b55">follow this link</a>.</p>

<h2>
<a id="user-content-version-5-adding-more-information-about-the-student" class="anchor" href="#version-5-adding-more-information-about-the-student" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 5: Adding more information about the student</h2>

<p>Right now the only information we have about our students is the name. What if we want to know what cohort they belong to? Let's update our students array to be an array of arrays. The nested arrays will have both the name and the cohort month.</p>

<div class="highlight highlight-ruby"><pre>students <span class="pl-k">=</span> [
  [<span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>],
  [<span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>],
  [<span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>],
  [<span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>],
  [<span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>],
  [<span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>],
  [<span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>],
  [<span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>],
  [<span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>]
]</pre></div>

<p>Since we changed our data structure, let's also update the print() method. Note that I renamed the argument since we are not passing just a name anymore. Also, I'm storing the cohort month as a symbol because I don't expect to treat it as a string (that is, combine it with another string, manipulate individual characters, etc).</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">print</span>(<span class="pl-vpf">students</span>)
  students.each <span class="pl-k">do </span>|<span class="pl-vo">student</span>|
    puts <span class="pl-s1"><span class="pl-pds">"</span><span class="pl-pse">#{</span><span class="pl-s2">student[<span class="pl-c1">0</span>]</span><span class="pl-pse"><span class="pl-s2">}</span></span> (<span class="pl-pse">#{</span><span class="pl-s2">student[<span class="pl-c1">1</span>]</span><span class="pl-pse"><span class="pl-s2">}</span></span> cohort)<span class="pl-pds">"</span></span>
  <span class="pl-k">end</span>
<span class="pl-k">end</span></pre></div>

<p>This gives us a beautiful output.</p>

<pre><code>ruby directory.rb
The students of my cohort at Makers Academy
-------------
Dr. Hannibal Lecter (november cohort)
Darth Vader (november cohort)
Nurse Ratched (november cohort)
Michael Corleone (november cohort)
Alex De Large (november cohort)
The Alien (november cohort)
Terminator (november cohort)
Freddy Kruger (november cohort)
The Joker (november cohort)
Overall, we have 9 great students
</code></pre>

<p>However, what's the problem with this code? Stop here for a second. Before you read the answer, ask yourself, what's wrong with this line:</p>

<div class="highlight highlight-ruby"><pre>puts <span class="pl-s1"><span class="pl-pds">"</span><span class="pl-pse">#{</span><span class="pl-s2">student[<span class="pl-c1">0</span>]</span><span class="pl-pse"><span class="pl-s2">}</span></span> (<span class="pl-pse">#{</span><span class="pl-s2">student[<span class="pl-c1">1</span>]</span><span class="pl-pse"><span class="pl-s2">}</span></span> cohort)<span class="pl-pds">"</span></span></pre></div>

<p>If you guess that it doesn't communicate its intent well enough, you're right. If you read this line in isolation, you can see that it's printing some information about a student but you don't know anything else. Is <code>student[0]</code> a name? A first name? A last name? An average grade? Even though you can answer these questions by reading the entire program, you should strive to write code that's easy to understand as it is. </p>

<p>Let's fix this problem. Let's store the student data not in arrays but in hashes (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle">  <a href="/makersacademy/pre_course/blob/master/pills/hashes.md">hashes</a> )</p>

<div class="highlight highlight-ruby"><pre>students <span class="pl-k">=</span> [
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>},
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>Darth Vader<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>},
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>Nurse Ratched<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>},
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>Michael Corleone<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>},
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>Alex De Large<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>},
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>The Alien<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>},
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>Terminator<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>},
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>Freddy Kruger<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>},
  {<span class="pl-c1">:name</span> =&gt; <span class="pl-s1"><span class="pl-pds">"</span>The Joker<span class="pl-pds">"</span></span>, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>}
]</pre></div>

<p>Hashes have keys corresponding to values, so instead of referencing the data by index as we've done with arrays (<code>student[0]</code>), we can reference them by key:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">print</span>(<span class="pl-vpf">students</span>)
  students.each <span class="pl-k">do </span>|<span class="pl-vo">student</span>|
    puts <span class="pl-s1"><span class="pl-pds">"</span><span class="pl-pse">#{</span><span class="pl-s2">student[<span class="pl-c1">:name</span>]</span><span class="pl-pse"><span class="pl-s2">}</span></span> (<span class="pl-pse">#{</span><span class="pl-s2">student[<span class="pl-c1">:cohort</span>]</span><span class="pl-pse"><span class="pl-s2">}</span></span> cohort)<span class="pl-pds">"</span></span>
  <span class="pl-k">end</span>
<span class="pl-k">end</span></pre></div>

<p>Now this method is much more readable. Even if you know nothing about the rest of the program, you can tell that for each student from an array of students it prints a name, followed by the cohort.</p>

<p>Now it's a good time to commit the code.</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/e0a6822e232602036e37e09674d26d5dc15c7a6d">follow this link</a>.</p>

<h2>
<a id="user-content-version-6-asking-for-user-input" class="anchor" href="#version-6-asking-for-user-input" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 6: Asking for user input</h2>

<p>Let's ask the user for the list of students instead of hardcoding them into the script. So we'll create an empty array of students and then ask the user for the first name and put it into the array. Then we'll ask for the second name and put it into the array. Then we'll ask for the third name and so on, until the user enters an empty name, at which point we'll just show the list of students. Sounds easy, right?  (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/user_interaction.md">user interaction</a> )</p>

<p>The method we're about to write (<strong>no copy and pasting, as usual</strong>) is going to be the most complex yet but don't worry, we'll break it down line by line.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">input_students</span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>Please enter the names of the students<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>To finish, just hit return twice<span class="pl-pds">"</span></span>
  <span class="pl-c"># create an empty array</span>
  students <span class="pl-k">=</span> []
  <span class="pl-c"># get the first name</span>
  name <span class="pl-k">=</span> gets.chomp
  <span class="pl-c"># while the name is not empty, repeat this code</span>
  <span class="pl-k">while</span> <span class="pl-k">!</span>name.empty? <span class="pl-k">do</span>    
    <span class="pl-c"># add the student hash to the array</span>
    students <span class="pl-k">&lt;&lt;</span> {<span class="pl-c1">:name</span> =&gt; name, <span class="pl-c1">:cohort</span> =&gt; <span class="pl-c1">:november</span>}    
    puts <span class="pl-s1"><span class="pl-pds">"</span>Now we have <span class="pl-pse">#{</span><span class="pl-s2">students.length</span><span class="pl-pse"><span class="pl-s2">}</span></span> students<span class="pl-pds">"</span></span>
    <span class="pl-c"># get another name from the user</span>
    name <span class="pl-k">=</span> gets.chomp
  <span class="pl-k">end</span>
  <span class="pl-c"># return the array of students</span>
  students
<span class="pl-k">end</span></pre></div>

<p>Now, instead of hardcoding the list of students, let's get it from the user:</p>

<div class="highlight highlight-ruby"><pre>students <span class="pl-k">=</span> input_students
print_header
print(students)
print_footer(students)</pre></div>

<p>So, what's going on in the <code>input_students</code> method? Firstly, we create an empty array to store our future students (line 5). Then we ask for the name of the first student (line 7) and discard the return character. Then, we write a block of code (lines 9 to 15) that will be executed repeatedly as long as the name variable is not empty (the "empty?" method is part of the String class). If the name the user entered on line 7 is not empty (exclamation mark at the beginning means negation), the block will be executed at least once. If not, it'll be skipped altogether and Ruby will jump to line 17.</p>

<p>Inside the block we know that the name is not empty (otherwise it wouldn't be executed at all). Then we add a new hash to the array (<a href="http://ruby-doc.org/core-2.0.0/Array.html#method-i-3C-3C">the &lt;&lt; is called a shovel operator and it's used to put things into an array</a> ) with the value of the name the user entered corresponding to the key :name. The value of the cohort is hardcoded (see the list of exercises on some ideas how to change it).</p>

<p>Then we print a line to let the user know how many students have been entered so far and ask for another name. When the current iteration finishes, the next thing that will be evaluated is the condition on line 9. If the user entered an empty name, Ruby will jump to line 17. Otherwise, if we do have a name, it will execute the block again.</p>

<p>Finally, the method will return the array of students that we'll assign to the variable <code>students</code> and then pass to other methods for printing on the screen as a list.</p>

<pre><code>ruby directory.rb
Please enter the names of the students
To finish, just hit return twice
Dr. Hannibal Lecter
Now we have 1 students
Darth Vader
Now we have 2 students
Nurse Ratched
Now we have 3 students

The students of my cohort at Makers Academy
—————————
Dr. Hannibal Lecter (november cohort)
Darth Vader (november cohort)
Nurse Ratched (november cohort)
Overall, we have 3 great students
</code></pre>

<p>If everything works as it should, commit the code.</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/be185955c825cc3b377fd6c8ad8df917820880ad">follow this link</a>.</p>

<p>So, our list of students is becoming interactive. Make sure you really understand all code and then try to extend it. See the list of exercises for some ideas on how to make it better.</p>

<h2>
<a id="user-content-exercises" class="anchor" href="#exercises" aria-hidden="true"><span class="octicon octicon-link"></span></a>Exercises</h2>

<p>Some of them are easy and some are more challenging. If you find yourself struggling, discuss the exercise with other students or just do an easy one before coming back to the harder exercise.</p>

<ol class="task-list">
<li>Can you make the program do exactly what it does now without using any "puts" statement? What would be the alternative?</li>
<li>We're using the each() method to iterate over an array of students. How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? Hint: replace each() with each_with_index().</li>
<li>Modify your program to only print the students whose name begins with a letter "A" (or any other).</li>
<li>Modify your program to only print the students whose name is shorter than 12 characters.</li>
<li>Rewrite the each() method that prints all students using "while" or "until" control flow methods (see Ruby 2).</li>
<li>Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.</li>
<li>Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned.</li>
<li>In the <code>input_students</code> method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo?</li>
<li>Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort.</li>
<li>Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". How can you fix it so that it used singular form when appropriate and plural form otherwise?</li>
<li>We've been using the chomp() method to get rid of the last return character. Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments).</li>
<li>Once you have completed the "Asking for user input" section, open <a href="https://raw.github.com/makersacademy/student-directory/b1820c858409e93166ac86cb1aa6b54fee2e1d7a/directory.rb">this file</a>. It's Ruby code but it has some typos. Copy it to a local file and open it in SublimeText without syntax highlighting. To do this, select "Plain Text" in the lower right corner of the window. It should look like this: <a href="/makersacademy/pre_course/blob/master/student_directory/images/SelectingRubySyntaxHighlighting.png" target="_blank"><img src="/makersacademy/pre_course/raw/master/student_directory/images/SelectingRubySyntaxHighlighting.png" alt="rubysyntaxhighlighting" style="max-width:100%;"></a>
Now, find all typos in that file and correct them. Use your experience, online documentation, etc. to find all mistakes. Run the script in the terminal from time to time to make sure it works as it should. Google the errors Ruby will give you, think about what they could mean, try different things but don't look the answer up :)</li>
<li>What happens if the user doesn't enter any students? It will try to print an empty list. How can you use an "if" statement (see <img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/control_flow.md">control flow</a>) to only print the list if there is at least one student in there?</li>
</ol>

<h2>
<a id="user-content-version-7-adding-an-interactive-menu" class="anchor" href="#version-7-adding-an-interactive-menu" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 7: Adding an interactive menu</h2>

<p>Right now our script is interactive, that is, it asks for the user input and prints it back. Later in this tutorial we'll add more sophisticated functionality: saving data to a file and loading it back, showing information about a particular student, displaying aggregates, etc. Let's start by creating an interactive menu that will ask the user what to do.</p>

<p>Every time you want to write a piece of code, describe how it works to yourself or your pairing partner in plain English. It often helps to understand what your code needs to do, saving you lots of time. As a Makers Academy student Nadia put it: <em><a href="http://startingupupandaway.wordpress.com/2013/10/27/battling-with-code-ships-and-sudoku/">Sometimes I think to myself “well, I’m not entirely sure how that will work out, but I’ll worry about it when I get there…” Bad, bad move…</a></em></p>

<p>So let's talk through how our interactive menu will work in the first place. Firstly, we'll need to show the user a list of possible options. If the user doesn't know what our program can do, how could he or she make a choice? For example, right now our program can input the list of students from the keyboard and print them on the screen.</p>

<p>Secondly, after we have shown the list of possible options, we need to ask the user what to do next. At this point we'll read the user input and execute the action. So, if the user wants to show the list of students, we'll do it.</p>

<p>Finally, we need to go back to step one instead of exiting the program. Otherwise our program will be able to do only one action and it won't be very useful.</p>

<p>So, a method that does it could look like this if we described what we want to do using comments:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">interactive_menu</span>
  <span class="pl-c"># 1. print the menu and ask the user what to do</span>
  <span class="pl-c"># 2. read the input and save it into a variable</span>
  <span class="pl-c"># 3. do what the user has asked</span>
  <span class="pl-c"># 4. repeat from step 1</span>
<span class="pl-k">end</span></pre></div>

<p>You learned how to perform all those actions in last week's project. Let's convert them into real Ruby code. Instead of starting with the first action, though, let's start with the last one: repeating the code from line 1, so that the user could make multiple selections.</p>

<p>If we need to repeat a certain action a number of times, we need a loop. In this program, we need to keep asking for the user input indefinitely (until the program terminates), so a simple loop is a good choice (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/control_flow.md">control flow</a> ) ).</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">interactive_menu</span>
  <span class="pl-k">loop</span> <span class="pl-k">do</span>
    <span class="pl-c"># 1. print the menu and ask the user what to do</span>
    <span class="pl-c"># 2. read the input and save it into a variable</span>
    <span class="pl-c"># 3. do what the user has asked</span>
  <span class="pl-k">end</span>
<span class="pl-k">end</span></pre></div>

<p>You already know how to print something, so the first step isn't a problem.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-c">#1. print the menu and ask the user what to do</span>
puts <span class="pl-s1"><span class="pl-pds">"</span>1. Input the students<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>2. Show the students<span class="pl-pds">"</span></span>
puts <span class="pl-s1"><span class="pl-pds">"</span>9. Exit<span class="pl-pds">"</span></span> <span class="pl-c"># 9 because we'll be adding more items</span></pre></div>

<p>You also know how to save the input into a variable:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-c">#2. read the input and save it into a variable</span>
selection <span class="pl-k">=</span> gets.chomp</pre></div>

<p>Finally, we need to do some action based on what the user has asked us to do. A switch statement might be helpful in this case… (<img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle">  <a href="/makersacademy/pre_course/blob/master/pills/control_flow.md">control flow</a> )</p>

<div class="highlight highlight-ruby"><pre><span class="pl-c">#3. do what the user has asked</span>
<span class="pl-k">case</span> selection
  <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>1<span class="pl-pds">"</span></span>
    <span class="pl-c"># input the students</span>
  <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>2<span class="pl-pds">"</span></span>
    <span class="pl-c"># show the students</span>
  <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>9<span class="pl-pds">"</span></span>
    exit <span class="pl-c"># this will cause the program to terminate</span>
  <span class="pl-k">else</span>
    puts <span class="pl-s1"><span class="pl-pds">"</span>I don't know what you meant, try again<span class="pl-pds">"</span></span>
<span class="pl-k">end</span></pre></div>

<p>We already have methods for inputting the students and showing them, so we can reuse them here.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-c">#3. do what the user has asked</span>
<span class="pl-k">case</span> selection
  <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>1<span class="pl-pds">"</span></span>
    students <span class="pl-k">=</span> input_students
  <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>2<span class="pl-pds">"</span></span>
    print_header
    print(students)
    print_footer(students)
  <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>9<span class="pl-pds">"</span></span>
    exit <span class="pl-c"># this will cause the program to terminate</span>
  <span class="pl-k">else</span>
    puts <span class="pl-s1"><span class="pl-pds">"</span>I don't know what you meant, try again<span class="pl-pds">"</span></span>
<span class="pl-k">end</span>

<span class="pl-k">def</span> <span class="pl-en">interactive_menu</span>
  students <span class="pl-k">=</span> []
  <span class="pl-k">loop</span> <span class="pl-k">do</span>
    <span class="pl-c"># 1. print the menu and ask the user what to do</span>
    puts <span class="pl-s1"><span class="pl-pds">"</span>1. Input the students<span class="pl-pds">"</span></span>
    puts <span class="pl-s1"><span class="pl-pds">"</span>2. Show the students<span class="pl-pds">"</span></span>
    puts <span class="pl-s1"><span class="pl-pds">"</span>9. Exit<span class="pl-pds">"</span></span> <span class="pl-c"># 9 because we'll be adding more items</span>
    <span class="pl-c"># 2. read the input and save it into a variable</span>
    selection <span class="pl-k">=</span> gets.chomp
    <span class="pl-c"># 3. do what the user has asked</span>
    <span class="pl-k">case</span> selection
      <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>1<span class="pl-pds">"</span></span>
        students <span class="pl-k">=</span> input_students
      <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>2<span class="pl-pds">"</span></span>
        print_header
        print(students)
        print_footer(students)
      <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>9<span class="pl-pds">"</span></span>
        exit <span class="pl-c"># this will cause the program to terminate</span>
      <span class="pl-k">else</span>
        puts <span class="pl-s1"><span class="pl-pds">"</span>I don't know what you meant, try again<span class="pl-pds">"</span></span>
      <span class="pl-k">end</span>
    <span class="pl-k">end</span>
<span class="pl-k">end</span></pre></div>

<p>Note that we declared the variable <code>students</code> before the loop setting it to an empty array. We've done it so that it was available in several iterations of the loop. If we didn't do it, it would be set in the first iteration (if we entered some students) but it wouldn't exist on the second iteration. To make it persist across different iterations, we need to declare it outside the loop.</p>

<p>Now update your program to call this method instead of asking for the list of users straight away and see if it works in the console.</p>

<p>Our code isn't perfect (we'll discuss why and fix it later) but it works (if it doesn't try to understand why by reading the error messages and fix it). So let's check it in before continuing with the project. Don't wait until the code is perfect: check it in if it works and refactor it later.</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/1ca451715800a2c5df49791ebe1c4f7161b92bad">follow this link</a>.</p>

<h3>
<a id="user-content-refactoring-the-code" class="anchor" href="#refactoring-the-code" aria-hidden="true"><span class="octicon octicon-link"></span></a>Refactoring the code</h3>

<p>First of all, why refactor if it works? Refactoring the code means improving its structure without changing its functionality, so that it was easier to understand and extend later. Once you get your code working, stop and think if you could refactor it to make it look good. This work will pay off later when you decide to add a couple more features.</p>

<p>What's wrong with our current code? First of all, the <code>interactive_menu</code> method is too long, taking 24 lines. We should aim to write methods as short as reasonably possible. Under 10 lines is good, under 5 lines is better, 1-3 lines is very good. Let's make this method shorter by extracting a couple of methods from it. We can extract the code that prints the menu into its own method.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">print_menu</span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>1. Input the students<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>2. Show the students<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>9. Exit<span class="pl-pds">"</span></span> <span class="pl-c"># 9 because we'll be adding more items  </span>
<span class="pl-k">end</span></pre></div>

<p>Let's also extract the code that prints the students into a method:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">show_students</span>
  print_header
  print(students)
  print_footer(students)
<span class="pl-k">end</span></pre></div>

<p>However, if you probably have noticed that we've just ran into a new problem. The new method show_students() needs the variable <code>students</code>. However, this variable is local to the method interactive_menu() and is, therefore, not accessible here.</p>

<p>One solution would be to pass it to the method as an argument. Another solution is to declare this variable outside all methods, so that it were accessible in all methods. If we do this, the variable will need to start with an "@" symbol. We'll explain why exactly it is so when we get to Object-oriented programming but for now let's just say that we're doing it so that this variable were accessible in all methods. So, put this at the very beginning of the file:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-vo">@students</span> <span class="pl-k">=</span> [] <span class="pl-c"># an empty array accessible to all methods</span></pre></div>

<p>Now that we've done it, we can stop passing the students around as an argument and just use this variable in all methods. I'll leave updating the code to start using this variable instead of arguments that we used to pass to you as an exercise.</p>

<p>The last big part of the method is the "case" statement that decides what to do based on what the user entered. Let's extract it into a new method as well.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">process</span>(<span class="pl-vpf">selection</span>)
  <span class="pl-k">case</span> selection
    <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>1<span class="pl-pds">"</span></span>
      input_students
    <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>2<span class="pl-pds">"</span></span>
      show_students
    <span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>9<span class="pl-pds">"</span></span>
      exit
    <span class="pl-k">else</span>
      puts <span class="pl-s1"><span class="pl-pds">"</span>I don't know what you mean, try again<span class="pl-pds">"</span></span>
  <span class="pl-k">end</span>
<span class="pl-k">end</span></pre></div>

<p>Note that we're passing the user selection as an argument to the method. The input_students() method isn't returning a list of students since it will work with the <code>@students</code> variable now. We don't need to pass the list of students to show_students() for the same reason. Now our interactive_menu() method looks much better.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">interactive_menu</span>
  <span class="pl-k">loop</span> <span class="pl-k">do</span>
    print_menu
    process(gets.chomp)
  <span class="pl-k">end</span>
<span class="pl-k">end</span></pre></div>

<p>I hope you agree that this is much more readable than what we had before. We print the menu and process the user input in an infinite loop. Everything else was teased out into separate methods. One of them doesn't look good, though.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">show_students</span>
  print_header
  print(students)
  print_footer(students)
<span class="pl-k">end</span></pre></div>

<p>The method print() has a bad name. It's obvious that it prints something but what exactly? Let's rename it to print_students_list() and remove the variables passed as arguments since we can now access <code>@students</code> from all methods.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">show_students</span>
  print_header
  print_students_list
  print_footer
<span class="pl-k">end</span></pre></div>

<p>Now it becomes more readable. Let's commit the code (double check that it works as before). However, the code is not perfect. There are several more opportunities for refactoring this code (see the exercises).</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/596363a7851e8aac5e8ecb669ded57b41d78d50e">follow this link</a>.</p>

<h2>
<a id="user-content-version-8-saving-the-data-to-a-file" class="anchor" href="#version-8-saving-the-data-to-a-file" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 8: Saving the data to a file</h2>

<p>Right now our students disappear every time we terminate the program because the data is stored in memory. Let's persist it to the disk every time the user enters a new student. We'll store the data in a text file in the same directory where the program is. We'll use the <a href="http://en.wikipedia.org/wiki/Comma-separated_values">comma-separated format</a> to store the data. So, our file will look like this:</p>

<pre lang="csv"><code>Dr. Hannibal Lecter,november
Darth Vader,november
</code></pre>

<p>and so on. Let's see how we could save the list of students to a file.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">save_students</span>
  <span class="pl-c"># open the file for writing</span>
  file <span class="pl-k">=</span> <span class="pl-s3">File</span>.open(<span class="pl-s1"><span class="pl-pds">"</span>students.csv<span class="pl-pds">"</span></span>, <span class="pl-s1"><span class="pl-pds">"</span>w<span class="pl-pds">"</span></span>)
  <span class="pl-c"># iterate over the array of students</span>
  <span class="pl-vo">@students</span>.each <span class="pl-k">do </span>|<span class="pl-vo">student</span>|
    student_data <span class="pl-k">=</span> [student[<span class="pl-c1">:name</span>], student[<span class="pl-c1">:cohort</span>]]
    csv_line <span class="pl-k">=</span> student_data.join(<span class="pl-s1"><span class="pl-pds">"</span>,<span class="pl-pds">"</span></span>)
    file.puts csv_line
  <span class="pl-k">end</span>
  file.close
<span class="pl-k">end</span></pre></div>

<p>Let's discuss this piece of code in detail. If we want to write to a file in Ruby, we need to "open" the file first. This is very similar to opening a file in a normal text editor, e.g. SublimeText. When we open a file, the open() method returns us a reference to the file that we can save it a variable called "file". Then we iterate over the array of students, processing one student at a time.</p>

<p>On every iteration we create a new array with the student name and the cohort, that is, the information we want to save to the file. We do this in order to convert it to a comma-separated string on the next line. The join() method joins all elements of the array it's called on together, using its argument as a separator. Finally, we write the csv line to the file using the familiar puts() method (except we call it on a file, so it writes to the file and not on the screen).</p>

<p>If the previous paragraph wasn't confusing, you're doing really well! If it was, don't worry, we'll discuss it again. So, on every iteration we want to write a line like this to the file: </p>

<pre><code>Dr. Hannibal Lecter,november
</code></pre>

<p>However, our data is stored in a hash, right? So, we need to convert this hash to a string to write to the file. An easy way to do it is to put all elements of the hash into an array and then convert it all to the string. So, on line 6 we'll create an array like this:</p>

<div class="highlight highlight-ruby"><pre>[<span class="pl-s1"><span class="pl-pds">"</span>Dr. Hannibal Lecter<span class="pl-pds">"</span></span>, <span class="pl-c1">:november</span>]</pre></div>

<p>Then, on line 7 we'll join it all together using comma as a separator:</p>

<pre><code>"Dr. Hannibal Lecter,november"
</code></pre>

<p>Then, on line 8 we write this line to the file using the method puts(). Finally, after we save all students to the file, we close it on line 10. Every time you open file, it needs to be closed.</p>

<p>We've just used a few new methods that you are not familiar with yet. Google their names to find more about them. Just searching <a href="http://www.google.com/?q=ruby%20file%20open#q=ruby+file+open">ruby file open</a> or <a href="https://www.google.com/?q=ruby%20file%20open#q=ruby+array+join">ruby array join</a> will give you want you need as the first result. Read the documentation for these methods to learn more about them. For example, what does the second argument to <code>File.open</code> mean? Most importantly, play with these methods in the irb. Create an array, then combine it into a string with join() using various separators. This is the best way to learn.</p>

<p>Allow me to digress from writing files for a second. As a developer, you need to be able to solve unknown problems on a daily basis, read and understand code written by other people, learn new languages and methods, etc. The main goal of this section is not to show that when you need to write something to a file, you need to call the method open() of the class File and then combine the data using the method join() from the class Array. These are insignificant details. Instead, you need to read the piece of code above, understand it, google the methods used and remember that the files must be opened and closed (how exactly to do it doesn't matter, you can always google it in a second). Also, you need to remember that if you need to write an array of data, you would normally iterate over this array and write a piece of data on every iteration. Don't worry about how exactly to do it: it's easy to look up. Overall, strive to understand things conceptually and learn how to find answers instead of memorising them.</p>

<p>So, back to writing files. Why did we use the method puts() to write to a file. Actually, this is a Ruby method that can be used in various situations. When we call it on its own, without any file reference, Ruby assumes that we want to write to standard output ( <img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/command_line.md">The command line</a> ). So, these two lines are equivalent:</p>

<div class="highlight highlight-ruby"><pre>puts <span class="pl-s1"><span class="pl-pds">"</span>Hello<span class="pl-pds">"</span></span>
<span class="pl-s3">STDOUT</span>.puts <span class="pl-s1"><span class="pl-pds">"</span>Hello<span class="pl-pds">"</span></span></pre></div>

<p>However, if we want to write to a file, instead of the output stream, we need to call it explicitly.</p>

<div class="highlight highlight-ruby"><pre>file.puts <span class="pl-s1"><span class="pl-pds">"</span>This is written to a file<span class="pl-pds">"</span></span></pre></div>

<p>You can inspect the file using SublimeText to make sure it looks correct.</p>

<p>Finally, let's add one more menu item to save the students if we want to.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">print_menu</span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>1. Input the students<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>2. Show the students<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>3. Save the list to students.csv<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>9. Exit<span class="pl-pds">"</span></span> <span class="pl-c"># 9 because we'll be adding more items  </span>
<span class="pl-k">end</span></pre></div>

<p>You'll also need to add one more case in the process() method.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">when</span> <span class="pl-s1"><span class="pl-pds">"</span>3<span class="pl-pds">"</span></span>
  save_students</pre></div>

<p>Check that everything works as expected and commit the <code>directory.rb</code> file.</p>

<p>However, what about the students.csv file we have in our project directory? It's not part of the codebase, so it shouldn't be checked in at all. However, if we do "git status", it will be shown as untracked.</p>

<pre><code>git status
# on branch master
# Changes to be committed:
#    (use “git reset HEAD &lt;file&gt;…” to upstage)
#         modified: directory.rb
# 
# Untracked files:
#    (use “git add &lt;file&gt;…” to include in what will be committed)
# 
#       students.csv
</code></pre>

<p>We want to tell git to ignore this file completely, as if it didn't exist. To do this, create a ".gitignore" file (starting with a dot) and put the name of the file you want to ignore in it.</p>

<p>Now the csv file will be ignored by git. However, you'll need to add the .gitignore file itself to your project.</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/437b0decb366d08431911a45db269ddc945197b7">follow this link</a>.</p>

<h2>
<a id="user-content-version-9-loading-the-data-from-the-file" class="anchor" href="#version-9-loading-the-data-from-the-file" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 9: Loading the data from the file</h2>

<p>If we have the data saved to the file, we can load it on startup, so that we didn't have to input all the students again. The loading procedure is going to be the reverse of the what we've done to save the data to the file.</p>

<p>First, we need to open the file for reading. Then, we'll read the contents of the file, iterate over all lines, split every line at the comma and put a new hash into the array <code>@students</code>. Finally, we'll close the file.</p>

<p>Before write the code, let's talk about different file access modes. When we opened the file for writing in the previous section, we did this:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-s3">File</span>.open(<span class="pl-s1"><span class="pl-pds">"</span>students.csv<span class="pl-pds">"</span></span>, <span class="pl-s1"><span class="pl-pds">"</span>w<span class="pl-pds">"</span></span>)</pre></div>

<p>The second argument is the file access mode. When you're accessing a file, you need to specify what you intend to do with it: read, write, read and write, append to it, etc. You need to do this so that other programs could access the file, if it's possible. For example, the same file can be opened simultaneously by several programs in "read only" mode but only one can open it in the "write" mode.</p>

<p>It makes sense: if several programs would open a file in write mode at the same time, what changes would be saved on the disk? The situation would be unpredictable. So the operating system (Ruby simply delegates opening the file to the operating system) doesn't allow to open the files if there's a possibility of a conflict.</p>

<p>You can read about different modes that Ruby allows in <a href="http://www.ruby-doc.org/core-2.0.0/IO.html#method-c-new-label-IO+Open+Mode">the documentation</a>. When you need to access the file, choose the most appropriate file access mode and use it.</p>

<p>Now let's load the students from the file.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">load_students</span>
  file <span class="pl-k">=</span> <span class="pl-s3">File</span>.open(<span class="pl-s1"><span class="pl-pds">"</span>students.csv<span class="pl-pds">"</span></span>, <span class="pl-s1"><span class="pl-pds">"</span>r<span class="pl-pds">"</span></span>)
  file.readlines.each <span class="pl-k">do </span>|<span class="pl-vo">line</span>|
  name, cohort <span class="pl-k">=</span> line.chomp.split(<span class="pl-s1"><span class="pl-pds">'</span>,<span class="pl-pds">'</span></span>)
    <span class="pl-vo">@students</span> <span class="pl-k">&lt;&lt;</span> {<span class="pl-c1">:name</span> =&gt; name, <span class="pl-c1">:cohort</span> =&gt; cohort.to_sym}
  <span class="pl-k">end</span>
  file.close
<span class="pl-k">end</span></pre></div>

<p>So, we open the file (this time for reading), then we read all lines into an array and iterate over it. On every iteration we discard the training new line character from the line, split it at the comma (this will give us an array with two elements) and assign it to the <code>name</code> and <code>cohort</code> variables. Once we have the name and the cohort, we create a new hash and put it into the list of students. Finally, we close the file.</p>

<p>There are a couple of new things happening here. First, we're doing a parallel assignment on line 4. This means that we are assigning two variables at the same time. If the assigned value is an array, then the first variable will get the first value of the array, the second variable – the second value and so on.</p>

<p>In our file every line has one comma, so if split the line at this comma, we'll get an array with two values. The first one will become the name and the second one will become the cohort ( <img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/parallel_assignment.md">parallel assignment</a> ).</p>

<p>On the next line we create a new hash and put it in the array of students using the shovel operator ( <img class="emoji" title=":pill:" alt=":pill:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f48a.png" height="20" width="20" align="absmiddle"> <a href="/makersacademy/pre_course/blob/master/pills/shovel_operator.md">shovel operator</a> ). The only thing that's different from the input_students() method that does the same operation is that here we're converting a string that we read from the file to a symbol (<code>cohort.to_sym</code>). We do it for consistency: if we have decided to store the cohort as a symbol, so let's not change the format.</p>

<p>If you now update the print_menu() and process() methods, your program should be able to load the students from file.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">print_menu</span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>1. Input the students<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>2. Show the students<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>3. Save the list to students.csv<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>4. Load the list from students.csv<span class="pl-pds">"</span></span>
  puts <span class="pl-s1"><span class="pl-pds">"</span>9. Exit<span class="pl-pds">"</span></span> <span class="pl-c"># 9 because we'll be adding more items  </span>
<span class="pl-k">end</span></pre></div>

<p>Right now we have a good opportunity for refactoring. See the list of exercises for more details. I've done it for you, so you can see it on Github (after you do it yourself!).</p>

<p>If everything works as it should, it's a good time to commit everything.</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/be462c52c2b5a284f58a3a1cc57aa4e94cf51762">follow this link</a>.</p>

<h2>
<a id="user-content-version-10-taking-arguments-from-the-command-line" class="anchor" href="#version-10-taking-arguments-from-the-command-line" aria-hidden="true"><span class="octicon octicon-link"></span></a>Version 10: Taking arguments from the command line</h2>

<p>Right now, the list of students is loaded from the file if you select the corresponding option from the menu. What if we wanted to load the information from the file on startup? Let's learn how to read command-line arguments and use them.</p>

<p>When you run a program in the terminal, you can pass arguments to it. You've done it many times by now. For example, when you change to a parent directory,</p>

<pre><code>cd ..
</code></pre>

<p>you are executing a program called <code>cd</code> and you're passing <code>..</code> as an argument, so that it knows what directory to change into. An argument here is very similar to an argument you're giving to a method. For example, if you wanted to change the current directory from Ruby, you'd do</p>

<div class="highlight highlight-ruby"><pre><span class="pl-s3">Dir</span>.chdir(<span class="pl-s1"><span class="pl-pds">'</span>..<span class="pl-pds">'</span></span>)</pre></div>

<p>Programs can use arguments passed to them on startup, just like methods have access to their own arguments. In case of methods, the arguments are usually (but not always) named in advance, for example:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">convert</span>(<span class="pl-vpf">amount</span>, <span class="pl-vpf">original_currency</span>, <span class="pl-vpf">target_currency</span>)
<span class="pl-k">end</span></pre></div>

<p>So we know in advance that we'll get exactly three arguments that we'll be referring to as <code>amount</code>, <code>original_currency</code> and <code>target_currency</code>. When a program is launched, there's no way of knowing how many arguments will be passed to it, let alone their names. Therefore, we have to access them by their index.</p>

<p>If our program is launched, the special <code>ARGV</code> array will contain all the arguments. So, if we run</p>

<pre><code>ruby directory.rb foo bar
</code></pre>

<p>the <code>ARGV</code> array will contain the arguments:</p>

<div class="highlight highlight-ruby"><pre>puts <span class="pl-s3">ARGV</span>.inspect <span class="pl-c">#=&gt; ["foo", "bar"]</span></pre></div>

<p>This allows us to use the command-line arguments to load the data from the file on startup. If we pass the filename as an argument, we can load the data from there automatically:</p>

<pre><code>ruby directory.rb students.csv
</code></pre>

<p>The argument, <code>students.csv</code>, will be the first and only element in the <code>ARGV</code> array. We'll be able to access it like this</p>

<div class="highlight highlight-ruby"><pre><span class="pl-s3">ARGV</span>.first</pre></div>

<p>So, let's load the data from the file on startup, if the file is present. We already have a method to load students from a file:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">load_students</span>
  file <span class="pl-k">=</span> <span class="pl-s3">File</span>.open(<span class="pl-s1"><span class="pl-pds">"</span>students.csv<span class="pl-pds">"</span></span>, <span class="pl-s1"><span class="pl-pds">"</span>r<span class="pl-pds">"</span></span>)
  file.readlines.each <span class="pl-k">do </span>|<span class="pl-vo">line</span>|
    name, cohort <span class="pl-k">=</span> line.chomp.split(<span class="pl-s1"><span class="pl-pds">'</span>,<span class="pl-pds">'</span></span>)
    add_student(name, cohort)
  <span class="pl-k">end</span>
  file.close
<span class="pl-k">end</span></pre></div>

<p>This method has the filename hardcoded into it. To make it work with arbitrary filenames, we need to make the method more flexible by passing the name as the argument. However, to preserve the original functionality, let's give it a default value.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">load_students</span>(<span class="pl-vpf">filename</span> <span class="pl-k">=</span> <span class="pl-s1"><span class="pl-pds">"</span>students.csv<span class="pl-pds">"</span></span>)
  file <span class="pl-k">=</span> <span class="pl-s3">File</span>.open(filename, <span class="pl-s1"><span class="pl-pds">"</span>r<span class="pl-pds">"</span></span>)
  file.readlines.each <span class="pl-k">do </span>|<span class="pl-vo">line</span>|
    name, cohort <span class="pl-k">=</span> line.chomp.split(<span class="pl-s1"><span class="pl-pds">'</span>,<span class="pl-pds">'</span></span>)
    add_student(name, cohort)
  <span class="pl-k">end</span>
  file.close
<span class="pl-k">end</span></pre></div>

<p>So, now the method accepts the filename as an argument. However,  if the argument is not supplied, then the value "students.csv" will be used. This value is called the default value for an argument. Providing it allows us to call the method either without the arguments or with one argument:</p>

<div class="highlight highlight-ruby"><pre>load_students <span class="pl-c"># will load from students.csv by default</span>
load_students(list.txt) <span class="pl-c"># will load from list.txt</span></pre></div>

<p>Let's now load the data if the file is given to the script as an argument. First, we'll need to see if the argument is given. If not, we just proceed as before and don't do anything. Then we need to check if the file exists. If it doesn't, the user must have given us the incorrect file name, so let's show an error message and quit. Finally, if the file is given and it exists, let's load it.</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">try_load_students</span>
  filename <span class="pl-k">=</span> <span class="pl-s3">ARGV</span>.first <span class="pl-c"># first argument from the command line</span>
  <span class="pl-k">return</span> <span class="pl-k">if</span> filename.nil? <span class="pl-c"># get out of the method if it isn't given</span>
  <span class="pl-k">if</span> <span class="pl-s3">File</span>.exists?(filename) <span class="pl-c"># if it exists</span>
    load_students(filename)
     puts <span class="pl-s1"><span class="pl-pds">"</span>Loaded <span class="pl-pse">#{</span><span class="pl-s2"><span class="pl-vo">@students</span>.length</span><span class="pl-pse"><span class="pl-s2">}</span></span> from <span class="pl-pse">#{</span><span class="pl-s2">filename</span><span class="pl-pse"><span class="pl-s2">}</span></span><span class="pl-pds">"</span></span>
  <span class="pl-k">else</span> <span class="pl-c"># if it doesn't exist</span>
    puts <span class="pl-s1"><span class="pl-pds">"</span>Sorry, <span class="pl-pse">#{</span><span class="pl-s2">filename</span><span class="pl-pse"><span class="pl-s2">}</span></span> doesn't exist.<span class="pl-pds">"</span></span>
    exit <span class="pl-c"># quit the program</span>
  <span class="pl-k">end</span>
<span class="pl-k">end</span></pre></div>

<p>Look at line 4. We're using a method exists?() defined in class File to check if a given file exists. How could you have guessed to use this method if you didn't know about it? First, it's reasonable to assume that Ruby has some methods to check for file existence. We can find it either by googling <a href="https://www.google.co.uk/search?q=ruby+check+file+exists">ruby check file exists</a> (the first result will be a stack overflow question with an answer) or by assuming that this functionality is in the File class that we used before. Again, <a href="http://www.google.com/search?q=ruby+file">google ruby file</a> to find it and then search the page for the word "exist". It must be mentioned in the description of the method that does that. As it turns out, the name of the method is exists?().</p>

<p>Again, your don't need to remember that the method that checks for file existence is File.exist?() (although you will, eventually). Instead, you need to learn how to find this method if you don't know its name.</p>

<p>We're almost done with this section. There's one more change we need to make to our program that's related to the way gets() works. We use this method to get the input from the keyboard but it actually does something else. It reads from the list of files supplied as arguments, only defaulting to the keyboard (or, standard input stream, to be precise) if there are no files. So, our code will now break unless we tell gets() to read specifically from the input stream even if some files have been passed as an argument. Read more about how gets() works in its <a href="http://www.ruby-doc.org/core-2.0.0/Kernel.html#method-i-gets">documentation</a>.</p>

<p>So, whenever we use gets(), let's specify that it should read from the standard input stream:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-s3">STDIN</span>.gets</pre></div>

<p>Update the input_students() and process() methods that use the gets() method to take the input from standard input.</p>

<p>Now, if you call this method right before showing the menu, it will load the students from the file if it's supplied by the command-line.</p>

<p>If everything works as expected, it's now time to commit the code.</p>

<p>If you would like to see what the code looks like at this stage of the tutorial, <a href="https://github.com/makersacademy/student-directory/tree/72d6159cdd7a2959f9628e13615e6d203d6f4531">follow this link</a>.</p>

<p><strong>Congratulations! You have reached the end of this tutorial!</strong></p>

<h2>
<a id="user-content-extra-exercises" class="anchor" href="#extra-exercises" aria-hidden="true"><span class="octicon octicon-link"></span></a>Extra Exercises</h2>

<ol class="task-list">
<li>Update the code to use <code>@students</code> variable instead of the <code>students</code> variable passed as an argument.</li>
<li> Continue refactoring the code. Which method is a bit too long? What method names are not clear enough? Anything else you'd change to make your code look more elegant? Why? Show your code to a teacher after you make it as beautiful as you can.</li>
<li> Write a short program that reads its own source code (search StackOverflow to find out how to get the name of the currently executed file) and prints it on the screen.</li>
<li> After we added the code to load the students from file, we ended up with adding the students to <code>@students</code> in two places. The lines in load_students() and input_students() are almost the same. This violates the <em>Don't Repeat Yourself</em> principle. How can you extract them into a method to fix this problem?</li>
<li> We are opening and closing the files manually. Read the documentation of the File class to find out how to use a code block (do...end) to access a file, so that we didn't have to close it explicitly (it will be closed automatically when the block finishes).  Refactor the code to use a code block.</li>
<li> We are de-facto using CSV format to store data. However, Ruby includes <a href="http://www.ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html">a library to work with the CSV files</a> that we could use instead of working directly with the files. Refactor the code to use this library.</li>
<li> The filename we use to save and load data (menu items 3 and 4) is hardcoded. Make the script more flexible by asking for the filename if the user chooses these menu items.</li>
</ol>
</article>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->


    </ul>


    
