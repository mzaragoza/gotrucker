class Users::InvoicesController < UserController
  expose(:invoices){ current_account.invoices.order("id DESC").scoped{} }
  expose(:invoice)

  def create
    if invoice.save
      flash[:notice] = t(:invoice_was_successfully_created)
      redirect_to(users_invoices_path)
    else
      render :new
    end
  end

  def update
    if invoice.save
      flash[:notice] = t(:invoice_was_successfully_updated)
      redirect_to(users_invoices_path)
    else
      render :edit
    end
  end
end

