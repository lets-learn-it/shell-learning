# Jobs

## Create Job

```sh
# create job by adding & at end of command
# sleep job will sleep for 10 sec
sleep 10 &
```

**You can create running process a job by pressing `ctrl + z` & running command `fg %1 (where 1 is job id)**

### Bring background job to foreground

```sh
fg %1
```


## Points

- Job will only appear in `jobs` if it is an immediate child of the shell.