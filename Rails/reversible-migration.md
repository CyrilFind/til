# Rails migrations

When doing simple stuff, recent versions of rails handle the `change` method easily in both directions:

```` Ruby
  class AddOwnerRefToTable < ActiveRecord::Migration
    def change
      add_reference :table, :owner, index: true
    end
  end
````

  or:

```` Ruby
   class AddColumnToTable < ActiveRecord::Migration
    def change
      add_column :table, :column, :string
    end
  end
```` 

But sometimes you need to write what to do in both directions: 

```` Ruby
 class ChangeSometingToTable < ActiveRecord::Migration
    def change
      reversible do |direction|
        direction.up do
          # Do migration stuff
        end
  
        direction.down do
          # Do rollback stuff
        end
      end
    end
  end
````
