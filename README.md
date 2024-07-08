# TF-Lint Composite Action

This repository contains a composite action for GitHub Actions that checks out the repository and runs `tflint`
over the specified path.

## Usage

To use this composite action, follow these steps:

1. Add the composite action to your workflow file:

```yaml
jobs:
  check-tf-fmt:
    runs-on: ubuntu-latest
    steps:
    - name: Lint Terraform
      uses: estenrye/tf-lint-composite-action@v1.0.0
      with:
        working_directory: './tf-tests/validly-formatted'
        terraform_version: 'latest'
```

## Inputs

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| `working_directory` | The directory to run `terraform fmt` in. | No | `.` |
| `tflint_version` | The version of tf-lint to use. | No | `latest` |

## Build Integration Pipeline Componenets Used

Actions used in this repository:
- [actions/checkout](https://github.com/marketplace/actions/checkout)
- [elgohr/Github-Release-Action](https://github.com/elgohr/Github-Release-Action)
- [terraform-linters/setup-tflint](https://github.com/terraform-linters/setup-tflint)
- [phish108/autotag-action](https://github.com/marketplace/actions/autotag)
- [nick-fields/assert-action](https://github.com/marketplace/actions/assert-action)
- [Ilshidur/action-discord](https://github.com/marketplace/actions/actions-for-discord)