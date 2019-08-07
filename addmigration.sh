# Cleans your migration files and adds a new migration
# Run without a name argument to only clean your migration files
echo "Resetting Migration directory to latest commit"
rm -rf Migrations
git checkout Migrations
if [ -n "$1" ]
then
    echo "Adding migration $1"
    dotnet ef migrations add $1
fi
echo "DONE"
