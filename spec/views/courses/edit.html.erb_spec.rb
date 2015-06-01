require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :teacher_id => 1,
      :title => "MyString",
      :overview => "MyText"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_teacher_id[name=?]", "course[teacher_id]"

      assert_select "input#course_title[name=?]", "course[title]"

      assert_select "textarea#course_overview[name=?]", "course[overview]"
    end
  end
end
