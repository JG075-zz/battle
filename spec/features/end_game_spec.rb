require "./app"

feature "Game Over" do
  let(:game) { Game.instance }
  scenario "when a player reaches 0HP" do
    sign_in_and_play
    until game.winner != nil
      click_button "Attack"
    end
    expect(page).to have_text("#{game.winner.name} won!")
  end
end
