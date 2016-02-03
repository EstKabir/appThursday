require 'rails_helper'

feature "visitando a pagina principal" do
  scenario "O visitante ve um texto de boas vindas" do
    visit root_path
    expect(page).to have_text("Seja bem vindo ao appThursday")
  end
  scenario "The visitor sees Kirk Quote", :js => true do
    visit root_path
    expect(page).not_to have_errors
    click_button "Kirk Quote"
    within(".modal-text") do
      expect(page).to have_text("Beam me up, Scotty!")
    end
    click_link "Close"
    expect(page).not_to have_text("Beam me up, Scotty!")
  end

end
