require 'spec_helper'

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

describe ExpendituresController do

  # This should return the minimal set of attributes required to create a valid
  # Expenditure. As you add validations to Expenditure, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExpendituresController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all expenditures as @expenditures" do
      expenditure = Expenditure.create! valid_attributes
      get :index, {}, valid_session
      assigns(:expenditures).should eq([expenditure])
    end
  end

  describe "GET show" do
    it "assigns the requested expenditure as @expenditure" do
      expenditure = Expenditure.create! valid_attributes
      get :show, {:id => expenditure.to_param}, valid_session
      assigns(:expenditure).should eq(expenditure)
    end
  end

  describe "GET new" do
    it "assigns a new expenditure as @expenditure" do
      get :new, {}, valid_session
      assigns(:expenditure).should be_a_new(Expenditure)
    end
  end

  describe "GET edit" do
    it "assigns the requested expenditure as @expenditure" do
      expenditure = Expenditure.create! valid_attributes
      get :edit, {:id => expenditure.to_param}, valid_session
      assigns(:expenditure).should eq(expenditure)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Expenditure" do
        expect {
          post :create, {:expenditure => valid_attributes}, valid_session
        }.to change(Expenditure, :count).by(1)
      end

      it "assigns a newly created expenditure as @expenditure" do
        post :create, {:expenditure => valid_attributes}, valid_session
        assigns(:expenditure).should be_a(Expenditure)
        assigns(:expenditure).should be_persisted
      end

      it "redirects to the created expenditure" do
        post :create, {:expenditure => valid_attributes}, valid_session
        response.should redirect_to(Expenditure.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved expenditure as @expenditure" do
        # Trigger the behavior that occurs when invalid params are submitted
        Expenditure.any_instance.stub(:save).and_return(false)
        post :create, {:expenditure => {}}, valid_session
        assigns(:expenditure).should be_a_new(Expenditure)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Expenditure.any_instance.stub(:save).and_return(false)
        post :create, {:expenditure => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested expenditure" do
        expenditure = Expenditure.create! valid_attributes
        # Assuming there are no other expenditures in the database, this
        # specifies that the Expenditure created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Expenditure.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => expenditure.to_param, :expenditure => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested expenditure as @expenditure" do
        expenditure = Expenditure.create! valid_attributes
        put :update, {:id => expenditure.to_param, :expenditure => valid_attributes}, valid_session
        assigns(:expenditure).should eq(expenditure)
      end

      it "redirects to the expenditure" do
        expenditure = Expenditure.create! valid_attributes
        put :update, {:id => expenditure.to_param, :expenditure => valid_attributes}, valid_session
        response.should redirect_to(expenditure)
      end
    end

    describe "with invalid params" do
      it "assigns the expenditure as @expenditure" do
        expenditure = Expenditure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Expenditure.any_instance.stub(:save).and_return(false)
        put :update, {:id => expenditure.to_param, :expenditure => {}}, valid_session
        assigns(:expenditure).should eq(expenditure)
      end

      it "re-renders the 'edit' template" do
        expenditure = Expenditure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Expenditure.any_instance.stub(:save).and_return(false)
        put :update, {:id => expenditure.to_param, :expenditure => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested expenditure" do
      expenditure = Expenditure.create! valid_attributes
      expect {
        delete :destroy, {:id => expenditure.to_param}, valid_session
      }.to change(Expenditure, :count).by(-1)
    end

    it "redirects to the expenditures list" do
      expenditure = Expenditure.create! valid_attributes
      delete :destroy, {:id => expenditure.to_param}, valid_session
      response.should redirect_to(expenditures_url)
    end
  end

end
