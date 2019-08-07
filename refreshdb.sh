# Refreshes db to initial state.
# Run with 1 as only argument if you want to mess up your migration files
echo 'Dropping database'
echo 'y' | dotnet ef database drop
if [ "$1" = "1" ]
then
  echo 'Deleting old Migrations'
  rm -rf Migrations
  echo 'Adding new Migrations'
  dotnet ef migrations add combined
fi
echo 'Updating new database'
dotnet ef database update
echo
echo 'DONE'
