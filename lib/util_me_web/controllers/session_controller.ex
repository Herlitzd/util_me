defmodule UtilMeWeb.SessionController do
  use UtilMeWeb, :controller
  alias UtilMe.Config

  def login(conn, %{"email" => email, "password" => password}) do
    token = Phoenix.Token.sign(UtilMeWeb.Endpoint, Config.jwt_hash, %{email: email})
    conn
    |> put_resp_cookie("token", token)
    |> json(%{token: token})
  end

  def attempt(conn, _params) do
    conn = conn
    |> fetch_cookies
    
    IO.inspect conn
    token = conn.cookies["token"]
    IO.inspect token
    cond do
      is_nil(token) ->
         send_resp(conn, 400, "")
      true ->
        conn |> json(%{token: token})
    end
  end
end
