class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.page(params[:page]).per(20)
    authorize @audit_logs
  end
  
  def confirm
    audit_log = AuditLog.find(params[:id])
    authorize audit_log
    audit_log.confirmed!
    redirect_to root_path, notice: "Thank you! Confirmation is successful."
    #above must be in this order to instantiate @audit_logs
    #otherwise it is nil
  end
end
