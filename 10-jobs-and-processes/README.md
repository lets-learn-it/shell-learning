# Jobs & Processes

## forground process

When you run command like below, you are running it in forground means you are blocked till command complete.

```sh
# you are blocked for 10 seconds
sleep 10
```

## background job

You can run job in background so that you can continue running other commands while job will run in background. Just add `&` at last of command like below

```sh
$ sleep 10 &
[1] 7898       # [job_id] pid
```

### send running job to background
you can send running job to background by pressing `ctrl + z` and run following command

```sh
# 1 here is job id
bg %1
```

### bring background running job to forground

```sh
# 1 here is job id
fg %1
```

### list all jobs 

```sh
jobs

# for getting pid of job
jobs -l
```

### kill job

killing running job using `kill` command as follow,

```sh
# 1 here is job id
kill %1

# kill using pid
kill pid
```

### Disowning bg job

This allows long running jobs to continue after shell is closed

```sh
# long running job
gzip largefile &

disown %1
```

## Points

- Job will only appear in `jobs` if it is an immediate child of the shell.
