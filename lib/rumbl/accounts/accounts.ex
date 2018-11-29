defmodule Rumbl.Accounts do
    @moduledoc """
    The Accounts Context
    """

    alias Rumbl.Accounts.User

    def list_users do
        [
            %User{id: "1", name: "Jose", username: "josevalim"},
            %User{id: "2", name: "Chris", username: "chrismccord"},
            %User{id: "3", name: "Bruce", username: "brucetate"},
        ]
    end

    def get_user(id) do
        Enum.find(list_users(), fn map -> map.id == id end)
    end

    def get_user_by(params) do
        Enum.find(list_users(), fn map ->
            Enum.all?(params, fn {key, val} ->
                Map.get(map, key) == val 
            end)
        end)
    end
end