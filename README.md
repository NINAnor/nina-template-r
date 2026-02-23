# NINA R template
🚀 Skip the boring setup and jump straight into coding! This template gives you everything you need for a modern R project - from code formatting to CI/CD - all configured and ready to go.

## Requirements
- [uv](https://github.com/astral-sh/uv) - An extremely fast Python package installer and resolver
- [git](https://git-scm.com/) - Version control system
- [pixi](https://prefix.dev/pixi) - Package manager

uv is needed just copy the template

## How to use it

### Creating a new project
Make sure that `uv` is installed, then run (replace `your-project-name` with your desired project name):

```bash
uvx --with copier_template_extensions copier copy --trust gh:ninanor/template-r your-project-name
```

Answer the questions and you are done.

### Applying to an existing project
To apply this template to an existing project directory:

```bash
cd your-existing-project
uvx --with copier_template_extensions copier copy --trust gh:ninanor/template-r .
```

This will add the template files to your current directory. Be careful as this may overwrite existing files.


## Features
Why should I use this template:

- **Auto formatting and code checking** using `air`
- **Updatable template** - Easy to keep up to date with latest practices
- **Visual Studio Code** configurations included
- **Pre-commit hooks** for code quality enforcement
- **GitHub Actions** workflows for CI/CD

## How to update
You just need to run:
```
uvx --with copier_template_extensions copier update --trust --defaults
```

In case you want to change your answers you can drop the `--defaults` flag:
```
uvx --with copier_template_extensions copier update --trust
```

In both cases, copier will try to check differences between your project and the template. It might be necessary to fix some conflicts: in this case it is up to the user to decide whenever to include or reject the improvements of the template into the repository.

Check this [page](https://copier.readthedocs.io/en/stable/updating/) for more specific info about this feature.

## Struggling with a template?
Please report any issues you have using the template, even if some documentation is unclear or is missing!


# Development

**NOTE**: Development of the template is supported only on Linux, the scripts used for development/maintenance of the template are Linux-only, while the resulting template can also be used in Windows.

Install development dependencies:
- **pinact**: `./scripts/install-pinact.sh`

## Testing the template
To test the template using copier-template-tester, run:
```bash
pre-commit run -c .pre-commit-config-extra.yaml
```

## Maintenance
To update dependencies and tools:
```bash
./scripts/maintenance.sh
```

## How to version
To create a new release:
```bash
./scripts/release.sh <patch|minor|major>
```

Example:
```bash
./scripts/release.sh minor
```
