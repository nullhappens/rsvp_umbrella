defmodule RsvpWeb.EventView do
  use RsvpWeb.Web, :view  

  def format_date(date) do
    {{y, m, d}, {h, mi, _}} = Ecto.DateTime.to_erl(date)
    # TODO: Fix this formatting for padding minutes
    #"#{m}/#{d}/#{y} #{h}:#{String.pad_leading(mi, 2, "0")}"
    "#{m}/#{d}/#{y} #{h}:#{mi}"
  end
end
