# Word List for kids_words

#### Epicodus: Ruby Course: Thursday, July 6th, 2018

#### Annie Shin

## Description

Website where user can enter words into a saved list of clickable links. When the user clicks on a word link, they will have the option of entering a definition for that word.

## Setup/Contribution Requirements

1. Clone the repo -or- go to: https://hidden-garden-65718.herokuapp.com/

## Technologies Used

** Ruby 2.4.1

## Specs/Steps

1. Example Input: User enters the word "butterflies", Example Output: The word "butterflies" will display in the words list
2. Example Input: User clicks on the "butterflies" link and a page will open with a form and button to enter definition information, Example Output: The page should save the definition user entered and associate it with that word

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Annie Shin**


  <form action="/word/<%= @word.id %>" method="post">


  <ul>
    <% @definition_list.definition.each do |definition| %>
    <li> <%= definition.definition %> </li>
    <% end %>
  </ul>


  #sending information
  post('/word/:id') do
    definition = params.fetch('definition')
    word_definition = Definition.new(defintion)
    word_definition.save()
    @def_list = Definition.all()
    erb(:word)
  end
