require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Admin::AdmissionProcessesController, type: :controller do

  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email:'a@s.com',password: 'secret', admin: true) }

  before do
    log_in_as user
  end

  # This should return the minimal set of attributes required to create a valid
  # Admin::AdmissionProcess. As you add validations to Admin::AdmissionProcess, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do{
      step: 1,
  name: "MyString"
  }end

  let(:invalid_attributes) do{
      step: "",
      name: ""
  }end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::AdmissionProcessesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all admin_admission_processes as @admin_admission_processes" do
      admission_process = Admin::AdmissionProcess.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:admin_admission_processes)).to eq([admission_process])
    end
  end

  describe "GET #show" do
    it "assigns the requested admin_admission_process as @admin_admission_process" do
      admission_process = Admin::AdmissionProcess.create! valid_attributes
      get :show, params: {id: admission_process.to_param}, session: valid_session
      expect(assigns(:admin_admission_process)).to eq(admission_process)
    end
  end

  describe "GET #new" do
    it "assigns a new admin_admission_process as @admin_admission_process" do
      get :new, params: {}, session: valid_session
      expect(assigns(:admin_admission_process)).to be_a_new(Admin::AdmissionProcess)
    end
  end

  describe "GET #edit" do
    it "assigns the requested admin_admission_process as @admin_admission_process" do
      admission_process = Admin::AdmissionProcess.create! valid_attributes
      get :edit, params: {id: admission_process.to_param}, session: valid_session
      expect(assigns(:admin_admission_process)).to eq(admission_process)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Admin::AdmissionProcess" do
        expect {
          post :create, params: {admin_admission_process: valid_attributes}, session: valid_session
        }.to change(Admin::AdmissionProcess, :count).by(1)
      end

      it "assigns a newly created admin_admission_process as @admin_admission_process" do
        post :create, params: {admin_admission_process: valid_attributes}, session: valid_session
        expect(assigns(:admin_admission_process)).to be_a(Admin::AdmissionProcess)
        expect(assigns(:admin_admission_process)).to be_persisted
      end

      it "redirects to the created admin_admission_process" do
        post :create, params: {admin_admission_process: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Admin::AdmissionProcess.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved admin_admission_process as @admin_admission_process" do
        post :create, params: {admin_admission_process: invalid_attributes}, session: valid_session
        expect(assigns(:admin_admission_process)).to be_a_new(Admin::AdmissionProcess)
      end

      it "re-renders the 'new' template" do
        post :create, params: {admin_admission_process: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do{
          step: 2,
          name: "MyString2"
      }end

      it "updates the requested admin_admission_process" do
        admission_process = Admin::AdmissionProcess.create! valid_attributes
        put :update, params: {id: admission_process.to_param, admin_admission_process: new_attributes}, session: valid_session
        admission_process.reload

      end

      it "assigns the requested admin_admission_process as @admin_admission_process" do
        admission_process = Admin::AdmissionProcess.create! valid_attributes
        put :update, params: {id: admission_process.to_param, admin_admission_process: valid_attributes}, session: valid_session
        expect(assigns(:admin_admission_process)).to eq(admission_process)
      end

      it "redirects to the admin_admission_process" do
        admission_process = Admin::AdmissionProcess.create! valid_attributes
        put :update, params: {id: admission_process.to_param, admin_admission_process: valid_attributes}, session: valid_session
        expect(response).to redirect_to(admission_process)
      end
    end

    context "with invalid params" do
      it "assigns the admin_admission_process as @admin_admission_process" do
        admission_process = Admin::AdmissionProcess.create! valid_attributes
        put :update, params: {id: admission_process.to_param, admin_admission_process: invalid_attributes}, session: valid_session
        expect(assigns(:admin_admission_process)).to eq(admission_process)
      end

      it "re-renders the 'edit' template" do
        admission_process = Admin::AdmissionProcess.create! valid_attributes
        put :update, params: {id: admission_process.to_param, admin_admission_process: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested admin_admission_process" do
      admission_process = Admin::AdmissionProcess.create! valid_attributes
      expect {
        delete :destroy, params: {id: admission_process.to_param}, session: valid_session
      }.to change(Admin::AdmissionProcess, :count).by(-1)
    end

    it "redirects to the admin_admission_processes list" do
      admission_process = Admin::AdmissionProcess.create! valid_attributes
      delete :destroy, params: {id: admission_process.to_param}, session: valid_session
      expect(response).to redirect_to(admin_admission_processes_url)
    end
  end

end
