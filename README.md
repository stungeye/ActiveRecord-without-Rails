## Active Record Without Rails

Some simple ruby script that make use of ActiveRecord CRUD tasks outside of Rails.

CRUD stands for Create, Read, Update and Delete. These are the typical operations that we perform on data in a database.

Before you continue you should read [the official Rails guide on Active Record Basics](https://guides.rubyonrails.org/active_record_basics.html).

Each one of these following scripts depends on the `ar.rb` file to load up the database connection. The following four scripts show how to perform CRUD on data in a `customers` table using a `Customer` mode.

* Read: [active_record_read.rb](https://github.com/stungeye/ActiveRecord-without-Rails/blob/master/active_record_read.rb)
* Create: [active_record_create.rb](https://github.com/stungeye/ActiveRecord-without-Rails/blob/master/active_record_create.rb)
* Update: [active_record_update.rb](https://github.com/stungeye/ActiveRecord-without-Rails/blob/master/active_record_update.rb)
* Delete: [active_record_delete.rb](https://github.com/stungeye/ActiveRecord-without-Rails/blob/master/active_record_delete.rb)

In a database we can relate data across different tables using foreign key associations. Here's an example of an association where each row in the `customers` table "belongs to" a row in the `provinces` table by way of a `province_id` foreign key:

* Associations: [active_record_assoc.rb](https://github.com/stungeye/ActiveRecord-without-Rails/blob/master/active_record_assoc.rb)

## Active Record Resources

* [Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html)
* [Active Record Validations](http://guides.rubyonrails.org/active_record_validations_callbacks.html)
* [Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
* [Rails Database Migrations](http://guides.rubyonrails.org/migrations.html)

## Thanks

This code was heavily inspired by [Luiz Cezer](https://github.com/lccezinha)'s [Active-Record-and-Migrations-without-Rails](https://github.com/lccezinha/Active-Record-and-Migrations-without-Rails).

## License

This is free and unencumbered software released into the public domain. See UNLICENSE for details.
