# 📃 How to contribute to the Vademecum

## 🔧 Requirements

✍️ Since the Vademecum is currently written in LaTeX, you need to have a basic knowledge of LaTeX.

💡 Overleaf has a great introduction on LaTeX ([Learn LaTeX in 30 minutes](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)), and you can experiment with their online editor for free, without having to install anything on your computer (full disclosure: we internally use Overleaf to edit the Vademecum). Learning LaTeX is something you'll probably have to do anyway to write your PhD thesis and to work in the scientific community at large.

## 🤖 Basic level

### Amend a file

👉 If you've noticed a typo, some outdated info or if you just want to quickly fix something, you can just go ahead and edit the culprit file directly from GitHub.

💡 GitHub's workflow is fully walked-through and user-friendly, so you don't need to have any knowledge of Git; just have a look at their short guide about [editing files in another user's repository](https://docs.github.com/en/github/managing-files-in-a-repository/managing-files-on-github/editing-files-in-another-users-repository).

📄 [optional] You'll not be able to generate a PDF preview of your edits directly from the "Preview" tab; however, when you'll create the pull request, our continuous integration system will compile your code into a PDF file in order to check your contribution. As an example, you can take a look at [this pull request](https://github.com/studentreps/vademecum/pull/6); the commit in the pull request has a green tick (✔️) next to it, indicating that the LaTeX code of that contribution compiled correctly (it'll be an orange dot while the compilation step is in progress). If you click on it and then click again on ["CI/build"](https://github.com/studentreps/vademecum/runs/2390133193), you'll be able to see the details of the automatic compilation. Finally, by clicking on "Artifacts -> vademecum" in the top-right menu, you'll be able to download the compiled PDF of that contribution.

### Open an issue

👉 If you've noticed an issue and you're not sure about how to proceed, or if you have a suggestion about the Vademecum, please open a new issue that explains the problem by [clicking here](https://github.com/studentreps/vademecum/issues/new/choose).

💡 You can read more about how to open an issue on GitHub's help page on [creating an issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-issues/creating-an-issue).

## 💻 Experienced level

👉 If you already have experience with Git, go ahead and fork our repo. Make any commits you want on your fork and when you've finished please open a pull request so that we can review your proposal and eventually merge it into the main branch.

💡 Please note that, if you want to preview the PDF resulting from your edits locally, you'll need to have a working LaTeX installation with all the necessary third-party packages.
