require 'rails_helper'

# feature 'user creates a project' do
#   before(:all) { Category.find_or_create_by(name: 'new category') }

#   scenario 'with valid atributes' do
#     visit "/projects"
#     click_link 'Nouveau Projet'

#     fill_in 'Titre du projet', with: 'Mon projet'
#     select 'new category', from: 'project_category_id'
#     puts find('#project_category_id').inspect
#     fill_in 'Description', with: 'Ceci est une description'
#     fill_in 'Adresse', with: 'Paris, France'
#     fill_in 'Montant souhaité', with: '2000'
#     click_button 'Créer le projet'

#     expect(page).to have_content "Project was successfully created."
#   end

#   scenario 'with invalid atributes' do
#     visit "/projects"
#     click_link 'Nouveau Projet'

#     select 'new category', from: 'Catégorie'
#     fill_in 'Description', with: 'Ceci est une description'
#     fill_in 'Adresse', with: 'Paris, France'
#     fill_in 'Montant souhaité', with: '2000'
#     click_button 'Créer le projet'

#     expect(page).to have_content "can't be blank"
#   end

# end
