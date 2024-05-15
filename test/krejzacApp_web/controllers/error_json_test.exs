defmodule KrejzacAppWeb.ErrorJSONTest do
  use KrejzacAppWeb.ConnCase, async: true

  test "renders 404" do
    assert KrejzacAppWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert KrejzacAppWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
