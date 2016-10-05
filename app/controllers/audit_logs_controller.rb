class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.all
    authorize @audit_logs
    #above must be in this order to instantiate @audit_logs
    #otherwise it is nil
  end
end
