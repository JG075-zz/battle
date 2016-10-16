require "./app"

feature "Switch players" do
  let(:game) { Game.instance }

  scenario "As player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text("#{game.current_player.name} attacked #{game.current_target.name}")
  end
end
