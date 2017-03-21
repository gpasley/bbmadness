require 'rails_helper'

describe SheetsController, type: :controller do
  let(:user) { create(:user, is_admin: false) }
  let(:admin) { create(:user, is_admin: true, email: 'admin@example.com') }
  let(:sheet) { create(:sheet) }
  let(:valid_attributes) { FactoryGirl.attributes_for(:sheet, user_id: user.id, round1g1a: 'Team1') }
  let(:valid_master_attributes) { FactoryGirl.attributes_for(:sheet, user_id: user.id, is_master: true, round1g1a: 'Team1') }
  let(:invalid_attributes) { FactoryGirl.attributes_for(:sheet, round1g1a: nil, user_id: user.id) }
  
  before do
    sign_in user
  end
  
  describe "my_brackets" do
    it "assigns all teams as @@teams" do
      master_sheet = Sheet.create! valid_master_attributes
      sheet = Sheet.create! valid_attributes
      expect(user).to be_a(User)
      expect(sheet).to be_a(Sheet)
      get :my_brackets, {}
      expect(assigns(:sheets)).to eq([master_sheet, sheet])
    end
  end
  
  describe "new" do
    it "assigns a new sheet as @sheet" do
      get :new, {}
      expect(assigns(:sheet)).to be_a_new(Sheet)  
    end
  end
  
  describe "create" do
    it "creates a new sheet" do
      expect {
        post :create, { sheet: valid_attributes }
      }.to change(Sheet, :count).by(1)
    end
    
    it "re-renders new view" do
      allow_any_instance_of(Sheet).to receive(:save).and_return(false)
      post :create, {:sheet => { "name" => "invalid value"}}
      expect(response).to render_template("new")
    end
  end
  
  describe "update" do
    let(:new_attributes) { FactoryGirl.attributes_for(:sheet, name: 'Name2', user: user) }
    it "updates a new sheet" do    
      new_sheet = Sheet.create! valid_attributes
      put :update, :id => new_sheet.to_param, :sheet => new_attributes
      new_sheet.reload
      expect(new_sheet.name).to eq('Name2')
    end
    
    it "re-renders edit view" do
      new_sheet = Sheet.create! valid_attributes
      invalid_attributes[:name] = nil
      put :update, :id => new_sheet.to_param, :sheet => invalid_attributes
      expect(response).to render_template("edit")
    end
  end
  
  describe "mark_paid" do    
    it "sets sheet as paid" do
      sign_in admin
      expect(user).to be_a(User)
      new_sheet = Sheet.create! valid_attributes
      get :mark_paid, { :id => new_sheet.to_param, :sheet => valid_attributes }
      new_sheet.reload
      expect(new_sheet.is_paid).to be_truthy
    end   
  end

  describe "lock_sheets" do
    it "sets sheet as locked" do
      sign_in admin
      new_sheet = Sheet.create! valid_attributes
      get :lock_sheets, { :id => new_sheet.to_param, :sheet => valid_attributes }
      new_sheet.reload
      expect(new_sheet.is_locked).to be_truthy
    end   
  end
  
  describe "lock_sheets" do
    it "sets sheet as locked" do
      sign_in admin
      master_sheet = Sheet.create! valid_master_attributes
      sheet = Sheet.create! valid_attributes
      get :get_points, { :id => sheet.to_param, :sheet => valid_attributes }
      sheet.reload
      expect(sheet.total_points).to eq(192)
    end   
  end
    
end