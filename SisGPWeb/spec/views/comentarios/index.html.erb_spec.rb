require 'rails_helper'

RSpec.describe "comentarios/index", type: :view do
  before(:each) do
    assign(:comentarios, [
      Comentario.create!(
        :assunto => "MyText",
        :conteudo => "MyText"
      ),
      Comentario.create!(
        :assunto => "MyText",
        :conteudo => "MyText"
      )
    ])
  end

  it "renders a list of comentarios" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end