# Adding a new module

Amazonka's source of truth for AWS services is botocore, but we haven't generated the code for many of the new ones yet.
To add support for `${NEW_SERVICE}`, follow these steps:

1. Run `script/add-service`.  The first argument is the name of the directory in botocore the second argument is the package name under `Network.AWS.Amazon` where the generated packages live.

   ```sh
   script/add-service eks EKS
   ```

1. Some modules compile out of the box, some don't.  Most modules that don't can be fixed with overrides in `gen/config/${NEW_SERVICE}.json`:

    ```json
    {
    "libraryName": "amazonka-eks",
      "typeOverrides": {
        "ErrorCode": {
            "renamedTo": "EKSErrorCode"
        }
      }
    }
    ```

1. If it doesn't compile yet, go to step one. It won't overwrite your changes.

1. Commit and open a PR to `EarnestResearch/amazonka`'s develop branch.

