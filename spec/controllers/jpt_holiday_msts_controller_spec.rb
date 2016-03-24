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

RSpec.describe JptHolidayMstsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # JptHolidayMst. As you add validations to JptHolidayMst, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JptHolidayMstsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all jpt_holiday_msts as @jpt_holiday_msts" do
      jpt_holiday_mst = JptHolidayMst.create! valid_attributes
      get :index_old, {}, valid_session
      expect(assigns(:jpt_holiday_msts)).to eq([jpt_holiday_mst])
    end
  end

  describe "GET #show" do
    it "assigns the requested jpt_holiday_mst as @jpt_holiday_mst" do
      jpt_holiday_mst = JptHolidayMst.create! valid_attributes
      get :show, {:id => jpt_holiday_mst.to_param}, valid_session
      expect(assigns(:jpt_holiday_mst)).to eq(jpt_holiday_mst)
    end
  end

  describe "GET #new" do
    it "assigns a new jpt_holiday_mst as @jpt_holiday_mst" do
      get :new, {}, valid_session
      expect(assigns(:jpt_holiday_mst)).to be_a_new(JptHolidayMst)
    end
  end

  describe "GET #edit" do
    it "assigns the requested jpt_holiday_mst as @jpt_holiday_mst" do
      jpt_holiday_mst = JptHolidayMst.create! valid_attributes
      get :edit, {:id => jpt_holiday_mst.to_param}, valid_session
      expect(assigns(:jpt_holiday_mst)).to eq(jpt_holiday_mst)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new JptHolidayMst" do
        expect {
          post :create, {:jpt_holiday_mst => valid_attributes}, valid_session
        }.to change(JptHolidayMst, :count).by(1)
      end

      it "assigns a newly created jpt_holiday_mst as @jpt_holiday_mst" do
        post :create, {:jpt_holiday_mst => valid_attributes}, valid_session
        expect(assigns(:jpt_holiday_mst)).to be_a(JptHolidayMst)
        expect(assigns(:jpt_holiday_mst)).to be_persisted
      end

      it "redirects to the created jpt_holiday_mst" do
        post :create, {:jpt_holiday_mst => valid_attributes}, valid_session
        expect(response).to redirect_to(JptHolidayMst.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved jpt_holiday_mst as @jpt_holiday_mst" do
        post :create, {:jpt_holiday_mst => invalid_attributes}, valid_session
        expect(assigns(:jpt_holiday_mst)).to be_a_new(JptHolidayMst)
      end

      it "re-renders the 'new' template" do
        post :create, {:jpt_holiday_mst => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested jpt_holiday_mst" do
        jpt_holiday_mst = JptHolidayMst.create! valid_attributes
        put :update, {:id => jpt_holiday_mst.to_param, :jpt_holiday_mst => new_attributes}, valid_session
        jpt_holiday_mst.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested jpt_holiday_mst as @jpt_holiday_mst" do
        jpt_holiday_mst = JptHolidayMst.create! valid_attributes
        put :update, {:id => jpt_holiday_mst.to_param, :jpt_holiday_mst => valid_attributes}, valid_session
        expect(assigns(:jpt_holiday_mst)).to eq(jpt_holiday_mst)
      end

      it "redirects to the jpt_holiday_mst" do
        jpt_holiday_mst = JptHolidayMst.create! valid_attributes
        put :update, {:id => jpt_holiday_mst.to_param, :jpt_holiday_mst => valid_attributes}, valid_session
        expect(response).to redirect_to(jpt_holiday_mst)
      end
    end

    context "with invalid params" do
      it "assigns the jpt_holiday_mst as @jpt_holiday_mst" do
        jpt_holiday_mst = JptHolidayMst.create! valid_attributes
        put :update, {:id => jpt_holiday_mst.to_param, :jpt_holiday_mst => invalid_attributes}, valid_session
        expect(assigns(:jpt_holiday_mst)).to eq(jpt_holiday_mst)
      end

      it "re-renders the 'edit' template" do
        jpt_holiday_mst = JptHolidayMst.create! valid_attributes
        put :update, {:id => jpt_holiday_mst.to_param, :jpt_holiday_mst => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested jpt_holiday_mst" do
      jpt_holiday_mst = JptHolidayMst.create! valid_attributes
      expect {
        delete :destroy, {:id => jpt_holiday_mst.to_param}, valid_session
      }.to change(JptHolidayMst, :count).by(-1)
    end

    it "redirects to the jpt_holiday_msts list" do
      jpt_holiday_mst = JptHolidayMst.create! valid_attributes
      delete :destroy, {:id => jpt_holiday_mst.to_param}, valid_session
      expect(response).to redirect_to(jpt_holiday_msts_url)
    end
  end

end
