require 'spec_helper'

describe "edit links work" do
  context "displays ", :driver => :selenium do
    it "Restaurantly Spots!" do
      visit '/restaurants/new'
      fill_in 'restaurant_name', with: "mc ruby"
      click_button 'submit!'
      visit '/'
      click_link 'edit'
      fill_in 'restaurant_name', with: "mc rails"
      click_button 'update'
      expect(page).to have_content 'mc rails'
    end
  end
end

describe "destroy links work" do
  context "displays ", :driver => :selenium do
    it "Restaurantly Spots!" do
      visit '/restaurants/new'
      fill_in 'restaurant_name', with: "mc ruby"
      click_button 'submit!'
      expect(page).to have_content 'mc ruby'
      visit '/'
      click_link 'destroy'
      expect(page).to have_no_content 'mc ruby'
    end
  end
end
