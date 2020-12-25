require "rails_helper"

# feature is like "describe"; scenario is like "it" - capybara
# refer: https://stackoverflow.com/questions/11643747/rspec-describe-context-feature-scenario
RSpec.feature "Creating Articles" do
    scenario "A user creates a new article" do
        visit "/"
        # capybara method
        click_link "New Article"

        fill_in "Title", with: "Creating a blog"
        fill_in "Body", with: "Lorem Ipsum"

        click_button "Create Article"
        expect(page).to have_content("Article has been created")
        expect(page.current_path).to eq(articles_path)
    end
end
