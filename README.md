# BOOK LENDING LIBRARY 
A library management system for keeping track of books in a library.

# SETTING UP THE PROJECT ON YOUR MACHINE
## Prerequisites

Ensure you have the following development tools installed:
- Ruby
- Rails (version 8.0.1)
- Postgresql
- Git

To verify whether each tool is installed, run the following commands in your terminal simultaneously:
```
ruby -v
rails -v
git -v
psql --version
```
In case any of the above commands doesn't return a version number then go through the tool's documentation on how to set it up.

## CLONING THE PROJECT INTO YOUR LOCAL MACHINE

You can clone this project directly from GitHub into your machine by running the command below in your terminal:

```
cd YOUR_DESIRED_DIRECTORY
git clone https://github.com/MOSES-OKOTH/book_lending_library
```

## RUNNING THE PROJECT
After cloning the project into your local machine, you're now supposed to navigate to the project's directory.

```
cd book_lending_library
```

You can now start the local rails server. Run:

```
rails s
```
Thereafter, visit http://localhost:3000/ to access the project.

## RUNNING TESTS
You can run various tests by running the following commands in your terminal

```
rails generate test_unit:model book
rails generate test_unit:model borrowing
rails generate test_unit:controller books
rails generate test_unit:controller borrowings
```
