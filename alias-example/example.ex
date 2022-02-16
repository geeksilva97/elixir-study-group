defmodule Example do
  alias ModuleA.Customer.Definitions, as: GlobalDefinitions

  def global_alias do
    GlobalDefinitions.health
  end

  def default_alias do
    alias ModuleA.Customer.Definitions
    Definitions.health
  end

  def custom_name_alias do
    alias ModuleA.Customer.Logs, as: CustomerLogs 
    CustomerLogs.show_me_the_logs 
  end

  def multiple_aliases do
    alias ModuleA.Customer.{Logs, Definitions}
    {Logs.show_me_the_logs, Definitions.health}
  end
end
