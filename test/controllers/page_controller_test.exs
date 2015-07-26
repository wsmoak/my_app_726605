defmodule MyApp_726605.PageControllerTest do
  use MyApp_726605.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
