defmodule BbApiWeb.ErrorViewTest do
  use BbApiWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.json" do
    assert render(BbApiWeb.ErrorView, "404.json", []) ==
           %{errors: %{detail: "Page not found"}}
  end

  test "render 500.json" do
    assert render(BbApiWeb.ErrorView, "500.json", []) ==
           %{errors: %{detail: "Internal server error"}}
  end

  test "render any other JSON" do
    assert render(BbApiWeb.ErrorView, "505.json", []) ==
           %{errors: %{detail: "Internal server error"}}
  end

  test "renders 404.html" do
    assert render_to_string(BbApiWeb.ErrorView, "404.html", []) ==
           "Page not found"
  end

  test "render 500.html" do
    assert render_to_string(BbApiWeb.ErrorView, "500.html", []) ==
           "Internal server error"
  end

  test "render any other HTML" do
    assert render_to_string(BbApiWeb.ErrorView, "505.html", []) ==
           "Internal server error"
  end
end
