require 'rails_helper'

describe TeamsController, type: :controller do
  let(:user) { create(:user, is_admin: true) }
  let(:team) { create(:team) }
  let(:valid_attributes) { FactoryGirl.attributes_for(:team) }
  let(:invalid_attributes) { FactoryGirl.attributes_for(:team, group: nil) }
  
  before do
    sign_in user
  end
  
  describe "index" do
    it "assigns all teams as @@teams" do
      expect(team).to be_a(Team)
      get :index, {}
      expect(assigns(:teams)).to eq([team])
    end
  end
  
  describe "new" do
    it "assigns a new team as @team" do
      get :new, {}
      expect(assigns(:team)).to be_a_new(Team)  
    end
  end
  
  describe "create" do
    it "creates a new team" do
      expect {
        post :create, { team: valid_attributes }
      }.to change(Team, :count).by(1)
    end
    
    it "re-renders new view" do
      allow_any_instance_of(Team).to receive(:save).and_return(false)
      post :create, {:team => { "name" => "invalid value"}}
      expect(response).to render_template("new")
    end
  end
  
  describe "update" do
    let(:new_attributes) { FactoryGirl.attributes_for(:team, name: 'Name2') }
    it "updates a new team" do    
      new_team = Team.create! valid_attributes
      put :update, :id => new_team.to_param, :team => new_attributes
      new_team.reload
      expect(new_team.name).to eq('Name2')
    end
    
    it "re-renders edit view" do
      new_team = Team.create! valid_attributes
      invalid_attributes[:name] = nil
      put :update, :id => new_team.to_param, :team => invalid_attributes
      expect(response).to render_template("edit")
    end
  end
  
  describe "team_lost" do
    it "sets team as having lost" do
      get :team_lost, { :id => team.to_param, :team => valid_attributes }
      team.reload
      expect(team.loss_yn).to be_truthy
    end   
  end
  
end