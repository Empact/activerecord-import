require File.expand_path('../test_helper', __FILE__)

describe ".synchronize" do
  let(:topics){ Generate(3, :topics) }
  let(:titles){ %w(one two three) }
  
  setup do
    # update records outside of ActiveRecord knowing about it
    Topic.connection.execute( "UPDATE #{Topic.table_name} SET title='#{titles[0]}_haha' WHERE id=#{topics[0].id}", "Updating record 1 without ActiveRecord" )
    Topic.connection.execute( "UPDATE #{Topic.table_name} SET title='#{titles[1]}_haha' WHERE id=#{topics[1].id}", "Updating record 2 without ActiveRecord" )
    Topic.connection.execute( "UPDATE #{Topic.table_name} SET title='#{titles[2]}_haha' WHERE id=#{topics[2].id}", "Updating record 3 without ActiveRecord" )
  end
  
  it "reloads data for the specified records" do
    Book.synchronize topics

    actual_titles = topics.map(&:title)
    assert_equal titles.map {|title| "#{title}_haha" }, actual_titles
  end
end
