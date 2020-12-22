defmodule Mix.Tasks.Backfill.FullName do
  use Mix.Task

  alias ZeroDowntime.Repo

  def run(_args) do
    Mix.Task.run("app.start", [])

    print_nicely("Starting backfill")

    Ecto.Adapters.SQL.query!(Repo, """
    UPDATE users
    SET full_name = name
    WHERE full_name IS NULL
    """)

    print_nicely("Done")
  end

  defp print_nicely(message) do
    Mix.Shell.IO.info("""
      - - - - - - - - - - - - - - - - -
      #{message}
      - - - - - - - - - - - - - - - - -
    """)
  end
end
