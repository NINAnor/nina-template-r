# nina-template-r

Modify this `README.md` file, to explain what your software does.

# Additional resources

In addition to this template, here is a list of useful resources you could start from:
- https://github.com/NINAnor/NinaR

# Good practices

## .gitignore

Add paths and files that you do not want to be committed by adding them to .gitignore.

## pre-commit

`pre-commit` can run tools to check your changes and refactor code (using `styler`), to keep your repository clean and avoid common mistakes. The list of actions that are executed are defined in `.pre-commit-config.yaml`.

### Installation

1. Install Python if not available. It can be downloaded from [python.org/downloads](https://www.python.org/downloads/). Be sure to add Python to your PATH.
2. Install `pipx`, as it is the suggested way to install Python tools:
   - Windows users: `py -3 -m pip install pipx`
   - Linux users: `python3 -m pip install pipx`
3. Install `pre-commit`: `pipx install pre-commit`
4. Configure PATH: `pipx ensurepath`
5. Close and open your shell again
6. Enter into your git repository and install the hooks: `pre-commit install` (optional, but recommended)

### How to use it

In case you executed `pre-commit install`, `pre-commit` hooks will be executed each time you will try to commit (`git commit`). If any of the checks fail or if any files that is going to be committed is changed (because a tool refactored or cleaned it), the commit will fail.

The suggested method to use `pre-commit` is to run it before trying to commit your changes, using `pre-commit run -a`. You can run this command multiple times, to check if the changes are ready to be committed.
After all the tests succeeded, the changes can be staged (`git add`) and committed.
