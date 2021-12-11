require "rails_helper"


RSpec.describe InterventionsController, :type => :controller do
  let!(:user) {create(:user)}
  let!(:address) {create(:address)}
  let!(:customer) {create(:customer, user: user, address: address)}
  let!(:building) {create(:building, customer: customer)}
  let!(:batterie) {create(:batterie, building: building)}
  let!(:column) {create(:column, batterie: batterie)}
  let!(:elevator) {create(:elevator, column: column)}
  let!(:employee) {create(:employee, user: user)}


  describe "GET interventionGetData" do
    it "has a 200 status code get_buildings" do
      get :get_buildings, params: {customer_id: customer.id, format: 'json'}
      buildings = JSON.parse(response.body)
      expect(buildings.count).to eq(1)
      expect(response.status).to eq(200)
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET interventionGetData" do
    it "Create more buildings and return the total of those buildings" do
      create_list(:building, 5, customer: customer)
      get :get_buildings, params: {customer_id: customer.id, format: 'json'}
      buildings = JSON.parse(response.body)
      expect(buildings.count).to eq(6)
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET interventionGetData" do
    it "has a 200 status code get_batteries" do
      get :get_batteries, params: {building_id: building.id, format: 'json'}
      batteries = JSON.parse(response.body)
      expect(batteries.count).to eq(1)
      expect(response.status).to eq(200)
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET interventionGetData" do
    it "Create more batteries and return the total of those batteries" do
      create_list(:batterie, 5, building: building)
      get :get_batteries, params: {building_id: building.id, format: 'json'}
      batteries = JSON.parse(response.body)
      expect(batteries.count).to eq(6)
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET interventionGetData" do
    it "has a 200 status code get_columns" do
      get :get_columns, params: {battery_id: batterie.id, format: 'json'}
      columns = JSON.parse(response.body)
      expect(columns.count).to eq(1)
      expect(response.status).to eq(200)
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET interventionGetData" do
    it "Create more columns and return the total of those columns" do
      create_list(:column, 5, batterie: batterie)
      get :get_columns, params: {battery_id: batterie.id, format: 'json'}
      columns = JSON.parse(response.body)
      expect(columns.count).to eq(6)
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET interventionGetData" do
    it "has a 200 status code get_elevators" do
      get :get_elevators, params: {column_id: column.id, format: 'json'}
      elevators = JSON.parse(response.body)
      expect(elevators.count).to eq(1)
      expect(response.status).to eq(200)
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET interventionGetData" do
    it "Create more elevators and return the total of those elevators" do
      create_list(:elevator, 5, column: column)
      get :get_elevators, params: {column_id: column.id, format: 'json'}
      elevators = JSON.parse(response.body)
      expect(elevators.count).to eq(6)
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET interventionGetData" do
    it "has a 200 status code new Intervention" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe "responds to" do
    it "responds to html by default, create Intervention" do
      post :create, :params => {:intervention => {:employee_id => "Employee", :customer_id => "Customer", :building_id => "Building", :column_id => "Column", :elevator_id => "Elevator", :report => "Report"}}
      expect(response.content_type).to eq "text/html"
    end
  end
end