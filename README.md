# attribute_to_postgresql
How does Ruby on Rails map it's scaffold data types to PostgreSQL?

## The Answer Is...
<pre>rails generate scaffold test1 attribute_binary:binary 
attribute_boolean:boolean attribute_date:date attribute_datetime:datetime 
attribute_decimal:decimal attribute_float:float attribute_integer:integer 
attribute_string:string attribute_text:text attribute_time:time --force

      invoke  active_record
      remove    db/migrate/20150824153006_create_test1s.rb
      create    db/migrate/20150824153123_create_test1s.rb
   identical    app/models/test1.rb
      invoke    test_unit
   identical      test/models/test1_test.rb
       force      test/fixtures/test1s.yml
      invoke  resource_route
       route    resources :test1s
      invoke  scaffold_controller
       force    app/controllers/test1s_controller.rb
      invoke    erb
       exist      app/views/test1s
       force      app/views/test1s/index.html.erb
   identical      app/views/test1s/edit.html.erb
       force      app/views/test1s/show.html.erb
   identical      app/views/test1s/new.html.erb
       force      app/views/test1s/_form.html.erb
      invoke    test_unit
       force      test/controllers/test1s_controller_test.rb
      invoke    helper
   identical      app/helpers/test1s_helper.rb
      invoke      test_unit
      invoke    jbuilder
       force      app/views/test1s/index.json.jbuilder
       force      app/views/test1s/show.json.jbuilder
      invoke  assets
      invoke    coffee
   identical      app/assets/javascripts/test1s.coffee
      invoke    scss
   identical      app/assets/stylesheets/test1s.scss
      invoke  scss
   identical    app/assets/stylesheets/scaffolds.scss

C:\Users\don\Documents\Work\attribute_to_postgresql>rake db:migrate
== 20150824153123 CreateTest1s: migrating =====================================
-- create_table(:test1s)
   -> 0.0720s
== 20150824153123 CreateTest1s: migrated (0.0730s) ============================

C:\Users\don\Documents\Work\attribute_to_postgresql>psql attribute_to_postgresql_dev don
Password for user don:
psql (9.4.4)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

attribute_to_postgresql_dev=# \d test1s
                                         Table "public.test1s"
       Column       |            Type             |                      Modifiers
--------------------+-----------------------------+-----------------------------------------------------
 id                 | integer                     | not null default nextval('test1s_id_seq'::regclass)
 attribute_binary   | bytea                       |
 attribute_boolean  | boolean                     |
 attribute_date     | date                        |
 attribute_datetime | timestamp without time zone |
 attribute_decimal  | numeric                     |
 attribute_float    | double precision            |
 attribute_integer  | integer                     |
 attribute_string   | character varying           |
 attribute_text     | text                        |
 attribute_time     | time without time zone      |
 created_at         | timestamp without time zone | not null
 updated_at         | timestamp without time zone | not null
Indexes:
    "test1s_pkey" PRIMARY KEY, btree (id)
    
</pre>