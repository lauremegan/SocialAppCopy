require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :article_id => 1,
      :name => "MyString",
      :email => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path(@comment), :method => "post" do
      assert_select "input#comment_article_id", :name => "comment[article_id]"
      assert_select "input#comment_name", :name => "comment[name]"
      assert_select "input#comment_email", :name => "comment[email]"
      assert_select "textarea#comment_body", :name => "comment[body]"
    end
  end
end
