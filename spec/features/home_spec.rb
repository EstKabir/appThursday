require 'rails_helper'

feature "visitando a pagina principal" do
  scenario "O visitante ve um texto de boas vindas" do
    visit root_path
    expect(page).to have_text("Seja bem vindo ao appThursday")
  end
end
