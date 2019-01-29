# S3 Backup

This is just a small setup to help me back up my important files to S3.
I use [Nix](https://nixos.org/nix/) to source [s3cmd](https://s3tools.org/s3cmd-sync), with a small handful of symbolic links and helper scripts to keep my storage drives sensible. 

## Notes

When setting up a new backup link use a symbolic link, `ln -s -t Pictures /media/uno/Pictures`.

## Uploading Files

1. Drop in to the `nix-shell`
1. Run the [s3cmd](https://s3tools.org/s3cmd-sync) program
    * s3cmd sync --exclude '*/.*' --skip-existing --recursive ./backup-links/Pictures s3://mhudson-backup/backups/

