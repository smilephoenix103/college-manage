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

RSpec.describe Admin::AdmissionEligibilitiesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Admin::AdmissionEligibility. As you add validations to Admin::AdmissionEligibility, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes)do {
      name:"MyString",
      description: "MyText"
  }
  end

  let(:invalid_attributes)do {
      name:"",
      description: ""
  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::AdmissionEligibilitiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all admin_admission_eligibilities as @admin_admission_eligibilities" do
      admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:admin_admission_eligibilities)).to eq([admission_eligibility])
    end
  end

  describe "GET #show" do
    it "assigns the requested admin_admission_eligibility as @admin_admission_eligibility" do
      admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
      get :show, params: {id: admission_eligibility.to_param}, session: valid_session
      expect(assigns(:admin_admission_eligibility)).to eq(admission_eligibility)
    end
  end

  describe "GET #new" do
    it "assigns a new admin_admission_eligibility as @admin_admission_eligibility" do
      get :new, params: {}, session: valid_session
      expect(assigns(:admin_admission_eligibility)).to be_a_new(Admin::AdmissionEligibility)
    end
  end

  describe "GET #edit" do
    it "assigns the requested admin_admission_eligibility as @admin_admission_eligibility" do
      admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
      get :edit, params: {id: admission_eligibility.to_param}, session: valid_session
      expect(assigns(:admin_admission_eligibility)).to eq(admission_eligibility)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Admin::AdmissionEligibility" do
        expect {
          post :create, params: {admin_admission_eligibility: valid_attributes}, session: valid_session
        }.to change(Admin::AdmissionEligibility, :count).by(1)
      end

      it "assigns a newly created admin_admission_eligibility as @admin_admission_eligibility" do
        post :create, params: {admin_admission_eligibility: valid_attributes}, session: valid_session
        expect(assigns(:admin_admission_eligibility)).to be_a(Admin::AdmissionEligibility)
        expect(assigns(:admin_admission_eligibility)).to be_persisted
      end

      it "redirects to the created admin_admission_eligibility" do
        post :create, params: {admin_admission_eligibility: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Admin::AdmissionEligibility.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved admin_admission_eligibility as @admin_admission_eligibility" do
        post :create, params: {admin_admission_eligibility: invalid_attributes}, session: valid_session
        expect(assigns(:admin_admission_eligibility)).to be_a_new(Admin::AdmissionEligibility)
      end

      it "re-renders the 'new' template" do
        post :create, params: {admin_admission_eligibility: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes)do{
        name:"MyString1",
            description: "MyText1"
      }
      end

      it "updates the requested admin_admission_eligibility" do
        admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
        put :update, params: {id: admission_eligibility.to_param, admin_admission_eligibility: new_attributes}, session: valid_session
        admission_eligibility.reload

      end

      it "assigns the requested admin_admission_eligibility as @admin_admission_eligibility" do
        admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
        put :update, params: {id: admission_eligibility.to_param, admin_admission_eligibility: valid_attributes}, session: valid_session
        expect(assigns(:admin_admission_eligibility)).to eq(admission_eligibility)
      end

      it "redirects to the admin_admission_eligibility" do
        admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
        put :update, params: {id: admission_eligibility.to_param, admin_admission_eligibility: valid_attributes}, session: valid_session
        expect(response).to redirect_to(admission_eligibility)
      end
    end

    context "with invalid params" do
      it "assigns the admin_admission_eligibility as @admin_admission_eligibility" do
        admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
        put :update, params: {id: admission_eligibility.to_param, admin_admission_eligibility: invalid_attributes}, session: valid_session
        expect(assigns(:admin_admission_eligibility)).to eq(admission_eligibility)
      end

      it "re-renders the 'edit' template" do
        admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
        put :update, params: {id: admission_eligibility.to_param, admin_admission_eligibility: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested admin_admission_eligibility" do
      admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
      expect {
        delete :destroy, params: {id: admission_eligibility.to_param}, session: valid_session
      }.to change(Admin::AdmissionEligibility, :count).by(-1)
    end

    it "redirects to the admin_admission_eligibilities list" do
      admission_eligibility = Admin::AdmissionEligibility.create! valid_attributes
      delete :destroy, params: {id: admission_eligibility.to_param}, session: valid_session
      expect(response).to redirect_to(admin_admission_eligibilities_url)
    end
  end

end
