class UsersController < ApplicationController
  
  protect_from_forgery :except => [:post_data]
  
  # Don't forget to edit routes if you're using RESTful routing (see config/routes.rb)
  def pets
    
    # Queries are here for clarity purposes in this demo
    # It's of course a better idea to create a method in your model
    
    if params[:id].present?
      pets = User.find(params[:id]).pets.find(:all) do
        paginate :page => params[:page], :per_page => params[:rows]      
        order_by "#{params[:sidx]} #{params[:sord]}"        
      end
      total_entries = pets.total_entries
    else
      pets = []
      total_entries = 0
    end
    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.json { render :json => pets.to_jqgrid_json([:id,:name], params[:page], params[:rows], total_entries) }
    end
  end
  
  # Don't forget to edit routes if you're using RESTful routing (see config/routes.rb)
  def post_data
    
    # It's of course your role to add security / validation here
    
    if params[:oper] == "del"
      User.find(params[:id]).destroy
    else
      user_params = { :pseudo => params[:pseudo], :firstname => params[:firstname], :lastname => params[:lastname], 
                      :email => params[:email], :role => params[:role] }
      if params[:id] == "_empty"
        User.create(user_params)
      else
        User.find(params[:id]).update_attributes(user_params)
      end
    end
    render :nothing => true
  end

  def index

    # Queries are here for clarity purposes in this demo
    # It's of course a better idea to create a method in your model

    users = User.find(:all) do
      if params[:_search] == "true"
        pseudo    =~ "%#{params[:pseudo]}%" if params[:pseudo].present?
        firstname =~ "%#{params[:firstname]}%" if params[:firstname].present?
        lastname  =~ "%#{params[:lastname]}%" if params[:lastname].present?                
        email     =~ "%#{params[:email]}%" if params[:email].present?
        role      =~ "%#{params[:role]}%" if params[:role].present?        
      end
      paginate :page => params[:page], :per_page => params[:rows]      
      order_by "#{params[:sidx]} #{params[:sord]}"
    end
    
    respond_to do |format|
      format.html
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.json { render :json => users.to_jqgrid_json([:id,:pseudo,:firstname,:lastname,:email,:role], 
                                                         params[:page], params[:rows], users.total_entries) }
    end
  end

end
