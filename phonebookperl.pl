#!/usr/bin/perl
use strict;
use warnings;

use constant MAX_CONTACTS => 100;

# Each contact will be a hashref: { name => ..., phone => ..., email => ... }
my @phonebook;
my $contact_count = 0;

sub add_contact {
    if ($contact_count >= MAX_CONTACTS) {
        print "Phonebook is full!\n";
        return;
    }

    print "Enter name: ";
    chomp(my $name = <STDIN>);

    print "Enter phone: ";
    chomp(my $phone = <STDIN>);

    print "Enter email: ";
    chomp(my $email = <STDIN>);

    $phonebook[$contact_count] = {
        name  => $name,
        phone => $phone,
        email => $email,
    };

    $contact_count++;
    print "Contact added successfully!\n";
}

sub find_contact {
    print "Enter name to search: ";
    chomp(my $search_name = <STDIN>);

    my $found = 0;

    for my $i (0 .. $contact_count - 1) {
        if ($phonebook[$i]{name} eq $search_name) {
            print "Name : $phonebook[$i]{name}\n";
            print "Phone: $phonebook[$i]{phone}\n";
            print "Email: $phonebook[$i]{email}\n";
            $found = 1;
            last;
        }
    }

    if (!$found) {
        print "Contact not found.\n";
    }
}

sub main_menu {
    my $choice;

    do {
        print "\n1. Add contact\n";
        print "2. Find contact\n";
        print "3. Exit\n";
        print "Enter your choice: ";

        chomp($choice = <STDIN>);

        if ($choice == 1) {
            add_contact();
        }
        elsif ($choice == 2) {
            find_contact();
        }
        elsif ($choice == 3) {
            print "Exiting...\n";
        }
        else {
            print "Invalid choice. Please try again.\n";
        }

    } while ($choice != 3);
}

# Program starts here
main_menu();
