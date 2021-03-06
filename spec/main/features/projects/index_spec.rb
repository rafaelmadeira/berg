require "main_app_helper"

RSpec.feature "Main / Projects / Index", js: false do
  include_context "main_projects"

  before do
    5.times do |i|
      create_project("Foo#{i + 1}Corp")
    end
  end

  scenario "I can view a list of projects" do
    visit "/work"

    expect(page).to have_content("Foo1Corp")
    expect(page).to have_content("Foo5Corp")
  end
end
