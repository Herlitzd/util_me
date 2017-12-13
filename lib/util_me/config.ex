defmodule UtilMe.Config do
  def token do
    GenServer.call(UtilMe.TokenManager, {:get, :token})
  end
  def api_url do
    Application.get_env(:util_me, :api_url)
  end
  def auth_url do
    Application.get_env(:util_me, :auth_url)
  end
  def api_key do
    Application.get_env(:util_me, :key)
  end
  def api_secret do
    Application.get_env(:util_me, :secret)
  end
  def jwt_hash do
    Application.get_env(:util_me, :jwt_hash)
  end
end