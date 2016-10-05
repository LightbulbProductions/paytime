class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.page(params[:page]).per(20)
    authorize @audit_logs
    #above must be in this order to instantiate @audit_logs
    #otherwise it is nil
  end
end
