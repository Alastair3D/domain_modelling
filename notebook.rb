class Note
 attr_reader :text, :tag
 def initialize(text, tag)
   @text = text
   @tag = tag
 end
end

class Notebook
 def initialize
   @collection = {}
 end

 def add_note(text, tag)
   note = Note.new(text, tag)
   @collection[note.text] = note.tag
 end

 def return_collection
   @collection
 end

 def search_tags(tag)
   @collection.select { |key, value| value == tag }
 end
end

note_book = Notebook.new
note_book.add_note('words', 'tags')
note_book.add_note('another one', 'tags')
note_book.add_note('third', 'hill')

puts note_book.return_collection
print note_book.search_tags('tags')